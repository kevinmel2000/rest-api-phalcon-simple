<?php

class Career extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     * @Primary
     * @Identity
     * @Column(type="integer", length=11, nullable=false)
     */
    public $id;

    /**
     *
     * @var string
     * @Column(type="string", length=100, nullable=false)
     */
    public $tittle_career;

    /**
     *
     * @var string
     * @Column(type="string", nullable=false)
     */
    public $descriptions_career;

    /**
     *
     * @var string
     * @Column(type="string", nullable=false)
     */
    public $responsibilities_career;

    /**
     *
     * @var string
     * @Column(type="string", nullable=false)
     */
    public $qualifications_career;

    /**
     *
     * @var string
     * @Column(type="string", length=45, nullable=false)
     */
    public $date_post;

    /**
     *
     * @var string
     * @Column(type="string", length=45, nullable=false)
     */
    public $close_date;

    /**
     *
     * @var string
     * @Column(type="string", nullable=false)
     */
    public $location_career;

    /**
     *
     * @var string
     * @Column(type="string", length=45, nullable=false)
     */
    public $image_career;

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'career';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Career[]
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Career
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

}
