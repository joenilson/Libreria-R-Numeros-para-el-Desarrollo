
#' Get the metadata of the indicators
#'
#' Data frame with series code, name, description, and source for the IADB
#' 
#' @param value Character string. 'ALL' or the IndicatorCode
#' @return Data frame with IndicatorCode, DataSetName, IndicatorName, IndicatorLongName, IndicatorShortDef,
#' IndicatorSynonym, IndicatorSource, TopicID, TopicName, SubTopicName, AggregationMethod, BasePeriod, Derivation Method,
#' OtherNote, Periodicity, PowerCode, Predefinedregion, PredefinedCountry, redefinedTopic, ReferencePerior, UOM, 
#' GeneralComment, LimitationException and SourceComment
#' @examples
#' iadbmsearch()
#' iadbmsearch(value="SOC_050")
#' @export
iadbmsearch <- function(value = 'ALL'){
  
  urlmeta = "metadata/indicator"
  searchType = "?searchtype=code"
  searchvalue = paste0("&searchvalue=",value)
  searchLanguage = "&languagecode=ES"
  
  urls = iadburls()
  
  url = paste0(urls$base_url,urlmeta,searchType,searchvalue,searchLanguage,urls$utils_url)
  
  print(url)
  iadbget.raw(url)  
}

