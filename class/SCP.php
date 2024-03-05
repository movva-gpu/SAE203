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
    private int $translator_id;

    function __construct($id, $num, $name, $class, $pic, $alt, $desc, $proc, $author_id, $translator_id)
    {
        $this->id    = $id;
        $this->num   = $num;
        $this->name  = $name;
        $this->class = $class;

        if (!str_contains($pic, 'https://') &&
            !str_contains($pic, 'http://')) $pic = '/assets/img/' . $pic;

        $this->pic = $pic;

        $this->alt           = $alt;
        $this->proc          = $proc;
        $this->desc          = $desc;
        $this->author_id     = $author_id;
        $this->translator_id = $translator_id;
    }

    /**
     * @return int
     */
    public function getId(): int
    {
        return $this->id;
    }

    /**
     * @return string
     */
    public function getNum(): string
    {
        return $this->num;
    }

    /**
     * @return string
     */
    public function getName(): string
    {
        return $this->name;
    }

    /**
     * @return string
     */
    public function getClass(): string
    {
        return $this->class;
    }

    /**
     * @return string
     */
    public function getPic(): string
    {
        return $this->pic;
    }

    /**
     * @return string
     */
    public function getAlt(): string
    {
        return $this->alt;
    }

    /**
     * @return string
     */
    public function getProc(): string
    {
        return $this->proc;
    }

    /**
     * @return string
     */
    public function getDesc(): string
    {
        return $this->desc;
    }

    /**
     * @return int
     */
    public function getAuthorId(): int
    {
        return $this->author_id;
    }

    /**
     * @return int
     */
    public function getTranslatorId(): int
    {
        return $this->translator_id;
    }

    function getDiv(): string
    {
        return '<div class="scp-cont">' . $this->getDivContent() . '</div>';
    }

    function getDivContent(): string
    {
        return '<div class="img-wrapper">' .
            '<img src="' . $this->getPic() . '" alt="' . $this->getAlt() . '">' .
            '<legend>' . $this->getAlt() . '</legend>' .
            '</div>' .
            '<h2 class="title">' . $this->getNum() . '&nbsp;-&nbsp;' . $this->getName() . '</h2>' .
            '<p class="num"><span class="bold">Objet n°&nbsp;:</span> ' . $this->getNum() . '</p>' .
            '<p class="class"><span class="bold">Classe&nbsp;:</span> ' . $this->getClass() . '</p>' .
            '<p class="proc"><span class="bold">Procédures de confinement spéciales&nbsp;:</span> ' . $this->getProc() . '</p>' .
            '<p class="desc"><span class="bold">Description&nbsp;:</span> ' . $this->getDesc() . '</p>';
    }
}