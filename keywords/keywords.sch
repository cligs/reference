<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt">
    <sch:ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>
    <sch:pattern>
        <sch:rule context="tei:keywords">
            <sch:let name="keywords-file" value="document('file://home/ulrike/Git/reference/keywords/keywords.xml')"/>
            <sch:let name="cat-author" value="$keywords-file//tei:category[@xml:id='author']" />
            <sch:let name="cat-publication" value="$keywords-file//tei:category[@xml:id='publication']" />
            <sch:let name="cat-language" value="$keywords-file//tei:category[@xml:id='language']" />
            <sch:let name="cat-form" value="$keywords-file//tei:category[@xml:id='form']" />
            <sch:let name="cat-genre" value="$keywords-file//tei:category[@xml:id='genre']" />
            <sch:let name="cat-level" value="$keywords-file//tei:category[@xml:id='level']" />
            <sch:let name="cat-setting" value="$keywords-file//tei:category[@xml:id='setting']" />
            <sch:let name="cat-narration" value="$keywords-file//tei:category[@xml:id='narration']" />
            <sch:let name="cat-time" value="$keywords-file//tei:category[@xml:id='time']" />
            <sch:let name="cat-characters" value="$keywords-file//tei:category[@xml:id='characters']" />
            
            <!-- ### author ### -->
            <sch:assert test="tei:term[@type='author.continent'] = $cat-author/tei:category[@xml:id='author.continent']/tei:category/tei:catDesc">Metadata error: author.continent</sch:assert>
            <sch:assert test="tei:term[@type='author.country'] = $cat-author/tei:category[@xml:id='author.country']/tei:category/tei:catDesc">Metadata error: author.country</sch:assert>
            <sch:assert test="tei:term[@type='author.gender'] = $cat-author/tei:category[@xml:id='author.gender']/tei:category/tei:catDesc">Metadata error: author.gender</sch:assert>
            <!-- ### publication ### -->
            <sch:assert test="tei:term[@type='publication.first.country'] = $cat-publication//tei:category[@xml:id='publication.first.country']/tei:category/tei:catDesc">Metadata error: publication.first.country</sch:assert>
            <sch:assert test="tei:term[@type='publication.first.medium'] = $cat-publication//tei:category[@xml:id='publication.first.medium']/tei:category/tei:catDesc">Metadata error: publication.first.medium</sch:assert>
            <sch:assert test="tei:term[@type='publication.first.type'] = $cat-publication//tei:category[@xml:id='publication.first.type']/tei:category/tei:catDesc">Metadata error: publication.first.type</sch:assert>
            <sch:assert test="tei:term[@type='publication.type.independent'] = $cat-publication//tei:category[@xml:id='publication.type.independent']/tei:category/tei:catDesc">Metadata error: publication.type.independent</sch:assert>
            
            <!-- ### language ### -->
            <sch:assert test="tei:term[@type='language'] = $cat-language/tei:category/tei:catDesc">Metadata error: language</sch:assert>
            <!-- ### form ### -->
            <sch:assert test="tei:term[@type='form'] = $cat-form/tei:category/tei:catDesc">Metadata error: form</sch:assert>
            <!-- ### genre ### -->
            <sch:assert test="tei:term[@type='genre'] = $cat-genre/tei:category/tei:catDesc">Metadata error: genre</sch:assert>
            <sch:assert test="tei:term[@type='genre.length'] = $cat-genre/tei:category[@xml:id='genre.length']/tei:category/tei:catDesc">Metadata error: genre.length</sch:assert>
            
            <sch:assert test="tei:term[@type='genre.supergenre'] = $cat-genre/tei:category[@xml:id='genre.supergenre']/tei:category/tei:catDesc">Metadata error: supergenre</sch:assert>
            <sch:assert test="tei:term[@type='genre.subgenre.interp'] = $cat-genre//tei:category[@xml:id='genre.subgenre.interp']/tei:category/tei:catDesc">Metadata error: genre.subgenre.interp</sch:assert>
            <sch:assert test="tei:term[@type='genre.subgenre.tm'] = $cat-genre//tei:category[@xml:id='genre.subgenre.tm']/tei:category/tei:catDesc">Metadata error: genre.subgenre.tm</sch:assert>
            <sch:assert test="tei:term[@type='genre.subgenre.hist'] = $cat-genre//tei:category[@xml:id='genre.subgenre.hist']/tei:category/tei:catDesc">Metadata error: genre.subgenre.hist</sch:assert>
            <sch:assert test="tei:term[@type='genre.subgenre.sentimental-interp'] = $cat-genre//tei:category[@xml:id='genre.subgenre.sentimental-interp']/tei:category/tei:catDesc">Metadata error: genre.subgenre.sentimental-interp</sch:assert>
            <!-- ### level ### -->
            <sch:assert test="tei:term[@type='level.cultural'] = $cat-level/tei:category[@xml:id='level.cultural']/tei:category/tei:catDesc">Metadata error: level.cultural</sch:assert>
            <!-- ### narration ### -->
            <sch:assert test="tei:term[@type='narration.narrative-perspective'] = $cat-narration/tei:category[@xml:id='narration.narrative-perspective']/tei:category/tei:catDesc">Metadata error: narration.narrative-perspective</sch:assert>
            <sch:assert test="tei:term[@type='narration.narrator'] = $cat-narration/tei:category[@xml:id='narration.narrator']/tei:category/tei:catDesc">Metadata error: narration.narrator</sch:assert>
            <!-- ### setting ### -->
            <sch:assert test="tei:term[@type='setting.continent'] = $cat-setting/tei:category[@xml:id='setting.continent']/tei:category/tei:catDesc">Metadata error: setting.continent</sch:assert>
            <sch:assert test="tei:term[@type='setting.country'] = $cat-setting/tei:category[@xml:id='setting.country']/tei:category/tei:catDesc">Metadata error: setting.country</sch:assert>
            <sch:assert test="tei:term[@type='setting.settlement.type'] = $cat-setting//tei:category[@xml:id='setting.settlement.type']/tei:category/tei:catDesc">Metadata error: setting.settlement.type</sch:assert>
            <!-- ### time ### -->
            <sch:assert test="tei:term[@type='time.period'] = $cat-time/tei:category[@xml:id='time.period']/tei:category/tei:catDesc">Metadata error: time.period</sch:assert>
            <!-- ### characters ### -->
            <sch:assert test="tei:term[@type='characters.protagonist.gender'] = $cat-characters//tei:category[@xml:id='characters.protagonist.gender']/tei:category/tei:catDesc">Metadata error: characters.protagonist.gender</sch:assert>
        </sch:rule>
    </sch:pattern>
</sch:schema>