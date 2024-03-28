<?php
namespace class;
class SCP
{
    private int $id;
    private string $num;
    private string $name;
    private string $class;
    private string $pic;
    private string $alt;
    private string $proc;
    private string $desc;
    private int $author_id;
    private int|null $translator_id;
    function __construct(
        $id,
        $num,
        $name,
        $class,
        $pic,
        $alt,
        $desc,
        $proc,
        $author_id,
        $translator_id
    ) {
        $list = get_html_translation_table(HTML_ENTITIES);
        unset($list['"']);
        unset($list['<']);
        unset($list['>']);
        unset($list['&']);
        $search = array_keys($list);
        $values = array_values($list);

        $this->id = $id;
        $this->num = str_replace($search, $values, $num);
        $this->name = str_replace($search, $values, $name);
        $this->class = str_replace($search, $values, $class);

        if (!str_contains($pic, 'https://') && !str_contains($pic, 'http://')) {
            $pic = '/assets/img/' . $pic;
        }

        $this->pic = $pic;
        $this->alt = str_replace($search, $values, $alt);
        $this->proc = str_replace($search, $values, $proc);
        $this->desc = str_replace($search, $values, $desc);
        $this->author_id = $author_id;
        $this->translator_id = $translator_id;
    }
    public function getId(): int
    {
        return $this->id;
    }
    public function getNum(): string
    {
        return $this->num;
    }
    public function getName(): string
    {
        return $this->name;
    }
    public function getClass(): string
    {
        return $this->class;
    }
    public function getPic(): string
    {
        return $this->pic;
    }
    public function getAlt(): string
    {
        return $this->alt;
    }
    public function getProc(): string
    {
        return $this->proc;
    }
    public function getDesc(): string
    {
        return $this->desc;
    }
    public function getAuthorId(): int
    {
        return $this->author_id;
    }
    public function getTranslatorId(): int
    {
        return $this->translator_id;
    }
    function getDiv(): string
    {
        return '<div class="scp-cont ' .
            strtolower($this->getNum()) .
            '">' .
            $this->getDivContent() .
            '</div>';
    }
    function getDivContent(): string
    {
        return '<div class="img-wrapper">' .
            '<div class="img" style="background: url(' .
            $this->getPic() .
            ') center / cover"></div>' .
            '<legend>' .
            $this->getAlt() .
            '</legend>' .
            '</div>' .
            '<h2 class="title">' .
            $this->getNum() .
            '&nbsp;
-&nbsp;
' .
            $this->getName() .
            '</h2>' .
            '<p class="num"><span class="bold">Objet n°&nbsp;
:</span> ' .
            $this->getNum() .
            '</p>' .
            '<p class="class"><span class="bold">Classe&nbsp;
:</span> ' .
            $this->getClass() .
            '</p>' .
            '<p class="proc"><span class="bold">Procédures de confinement spéciales&nbsp;
:</span> ' .
            $this->getProc() .
            '</p>' .
            '<p class="desc"><span class="bold">Description&nbsp;
:</span> ' .
            $this->getDesc() .
            '</p>';
    }
}
