<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\HoraireRepository")
 */
class Horaire
{
    const DAY = [
        1 => 'lundi',
        2 => 'mardi',
        3 => 'mercredi',
        4 => 'jeudi',
        5 => 'vendredi',
        6 => 'samedi',
        7 => 'dimanche'
    ];
    
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="smallint")
     */
    private $day;

    /**
     * @ORM\Column(type="time", nullable=true)
     */
    private $begin_hour_am;

    /**
     * @ORM\Column(type="time", nullable=true)
     */
    private $end_hour_am;

    /**
     * @ORM\Column(type="time", nullable=true)
     */
    private $begin_hour_pm;

    /**
     * @ORM\Column(type="time", nullable=true)
     */
    private $end_hour_pm;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Restaurant", inversedBy="horaires")
     * @ORM\JoinColumn(nullable=false)
     */
    private $restaurant;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getDay(): ?int
    {
        return $this->day;
    }

    public function setDay(int $day): self
    {
        $this->day = $day;

        return $this;
    }
    
    public function getDayType(): string
    {
        return self::DAY[$this->day];
    }

    public function getBeginHourAm(): ?\DateTimeInterface
    {
        return $this->begin_hour_am;
    }

    public function setBeginHourAm(?\DateTimeInterface $begin_hour_am): self
    {
        $this->begin_hour_am = $begin_hour_am;

        return $this;
    }

    public function getEndHourAm(): ?\DateTimeInterface
    {
        return $this->end_hour_am;
    }

    public function setEndHourAm(?\DateTimeInterface $end_hour_am): self
    {
        $this->end_hour_am = $end_hour_am;

        return $this;
    }

    public function getBeginHourPm(): ?\DateTimeInterface
    {
        return $this->begin_hour_pm;
    }

    public function setBeginHourPm(?\DateTimeInterface $begin_hour_pm): self
    {
        $this->begin_hour_pm = $begin_hour_pm;

        return $this;
    }

    public function getEndHourPm(): ?\DateTimeInterface
    {
        return $this->end_hour_pm;
    }

    public function setEndHourPm(?\DateTimeInterface $end_hour_pm): self
    {
        $this->end_hour_pm = $end_hour_pm;

        return $this;
    }

    public function getRestaurant(): ?Restaurant
    {
        return $this->restaurant;
    }

    public function setRestaurant(?Restaurant $restaurant): self
    {
        $this->restaurant = $restaurant;

        return $this;
    }
}
