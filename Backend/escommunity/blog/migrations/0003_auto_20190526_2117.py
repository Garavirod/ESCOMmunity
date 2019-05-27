# Generated by Django 2.0.2 on 2019-05-26 21:17

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0002_auto_20190526_2108'),
    ]

    operations = [
        migrations.AddField(
            model_name='commentary',
            name='entry',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='blog.Entry', verbose_name='Comentar entrada'),
        ),
        migrations.AlterField(
            model_name='commentary',
            name='post',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='blog.AlumnoPost', verbose_name='Comentar post'),
        ),
    ]