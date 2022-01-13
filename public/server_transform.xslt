<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!--xsl:template говорит о том, что тут будет замена. match показывает, к какой части документа это применимо-->
  <xsl:template match="/">
    <!--Внутри шаблона пишем наше преобразование-->
    <html>
      <head>
        <title>Ответ</title>
      </head>
      <body>
        <table>
          <thead>
            <tr>
              <th>Полученный массив:</th>
              <th>Все отрезки:</th>
              <th>Количество отрезков:</th>
              <th>Самый длинный отрезок:</th>
            </tr>
          </thead>
            <!--Создание переменной-->
            <tbody>
              <tr>
                <th>
                  <!--Извлекаем значение из переменной (обратите внимание на $)-->
                  <xsl:value-of select="received"></xsl:value-of>
                </th>
                <th>
                  <!--Извлекаем значение из XML-тега-->
                  <xsl:value-of select="result"></xsl:value-of>
                </th>
                <th>
                  <!--Извлекаем значение из XML-тега-->
                  <xsl:value-of select="result[1]"></xsl:value-of>
                </th>
                <th>
                  <!--Извлекаем значение из XML-тега-->
                  <xsl:value-of select="result[2]"></xsl:value-of>
                </th>
              </tr>
            </tbody>
        </table>
        <script>
            Array.from(document.querySelectorAll('td')).forEach((elem)=>{if (elem.textContent.includes('iterate')){
            elem.textContent = elem.textContent.substr('iterate'.length)
            }
            })
        </script>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>