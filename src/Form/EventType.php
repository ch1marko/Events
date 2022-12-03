<?php

namespace App\Form;

use App\Entity\Event;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\UrlType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class EventType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name', TextType::class, ["attr"=>["placeholder" => "Please type", "class" => "form-control  w-75 mb-2" ]])
            ->add('date', DateTimeType::class, ["attr" =>["class"=>"form-control  w-75 mb-2",'format' => 'yyyy-MM-dd']])
            ->add('start_time', DateTimeType::class, ["attr" =>["class"=>"form-control  w-75 mb-2"]])
            ->add('description', TextareaType::class,  ["attr"=>["placeholder" => "Please type a description...", "class" => "form-control  w-75 mb-2" ]])
            ->add('picture', TextType::class, [
                'label' => 'Picture',
                'attr' => ['class' => 'form-control w-75', 'style' => 'margin-bottom:2rem;', 'placeholder'=>'Picture']])
            ->add('capacity',  NumberType::class, [
                'label' => 'Number of People',
                'attr' => ['class' => 'form-control w-75', 'style' => 'margin-bottom:2rem;', 'placeholder'=>'Number of People']
            ])
            ->add('email', EmailType::class, [
                'label' => 'Email Address',
                'attr' => ['class' => 'form-control w-75', 'style' => 'margin-bottom:2rem;', 'placeholder'=>'Email Address']])
            ->add('phone_number', NumberType::class, [
                'label' => 'Phone Number',
                'attr' => ['class' => 'form-control w-75', 'style' => 'margin-bottom:2rem;', 'placeholder'=>'Phone Number']
            ])
            ->add('city', ChoiceType::class, [
                'choices' => ['Vienna' => 'Vienna', 'Upper Austria' => 'Upper Austria', 'Lower Austria' => 'Lower Austria', 'Styria' => 'Styria', 'Carinthia' =>'Carinthia', 'Vorarlberg'=>"Vorarlberg"],
                'attr' => ['class' => 'form-control w-75', 'style' => 'margin-bottom:2rem']
            ])
            ->add('street_name',  TextType::class, [
                'label' => 'Street Name',
                'attr' => ['class' => 'form-control w-75', 'style' => 'margin-bottom:2rem;', 'placeholder'=>'Street Name']
            ])
            ->add('house_number',  NumberType::class, [
                'label' => 'House Number',
                'attr' => ['class' => 'form-control w-75', 'style' => 'margin-bottom:2rem;', 'placeholder'=>'House Number']
            ])
            ->add('zip_code', NumberType::class, [
                'label' => 'Zip Code',
                'attr' => ['class' => 'form-control w-75', 'style' => 'margin-bottom:2rem;', 'placeholder'=>'Zip Code']
            ])
            ->add('event_url', UrlType::class, [
                'label' => 'Event Website',
                'attr' => ['class' => 'form-control w-75', 'style' => 'margin-bottom:2rem;', 'placeholder'=>'Event Website']
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Event::class,
        ]);
    }
}
