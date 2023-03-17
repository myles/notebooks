from django.contrib.postgres.fields import ArrayField
from django.db import models


class Prospect(models.Model):
    name = models.CharField('name', max_length=100)

    class Meta:
        db_table = 'prospects'
        ordering = ('name',)

    def __str__(self):
        return self.name


class HotList(models.Model):
    prospect_list = ArrayField(models.IntegerField(), size=10)

    class Meta:
        db_table = 'host_lists'
