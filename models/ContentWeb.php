<?php

class ContentWeb extends \Phalcon\Mvc\Model
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
    public $name_content;

    /**
     *
     * @var string
     * @Column(type="string", nullable=false)
     */
    public $decription_content;

    /**
     *
     * @var string
     * @Column(type="string", length=20, nullable=false)
     */
    public $date_content;

    /**
     *
     * @var string
     * @Column(type="string", length=45, nullable=false)
     */
    public $category_content;

    /**
     *
     * @var string
     * @Column(type="string", nullable=false)
     */
    public $image_content;

    /**
     *
     * @var string
     * @Column(type="string", length=100, nullable=false)
     */
    public $title_content;

    /**
     *
     * @var string
     * @Column(type="string", length=100, nullable=false)
     */
    public $summary_content;

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'content_web';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return ContentWeb[]
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return ContentWeb
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

}
