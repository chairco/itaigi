
require! <[events ../dispatcher/AppDispatcher ../constants/AppConstants]>

var _query
_phrases = [
  {
    "流水號": "",
    "華語": "要衝",
    "漢字": "要衝",
    "台羅": "iau3-tshiong",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "要旨",
    "漢字": "要旨",
    "台羅": "iau3-tsi2",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "要職",
    "漢字": "要職",
    "台羅": "iau3-tsit",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "要害",
    "漢字": "要害",
    "台羅": "iau3-hai7",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "要項",
    "漢字": "要項",
    "台羅": "iau3-hang7",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "要犯",
    "漢字": "要犯",
    "台羅": "iau3-huann7",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "要人",
    "漢字": "要人",
    "台羅": "iau3-jinn5",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "要角",
    "漢字": "要角",
    "台羅": "iau3-kak",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "要件",
    "漢字": "要件",
    "台羅": "iau3-kiann7",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "要緊",
    "漢字": "要緊",
    "台羅": "iau3-kinn2",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "要訣",
    "漢字": "要訣",
    "台羅": "iau3-kuat",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "仍然",
    "漢字": "猶閣",
    "台羅": "iau3-koh",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "要領",
    "漢字": "要領",
    "台羅": "iau3-ling2",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "要員",
    "漢字": "要員",
    "台羅": "iau3-uann5",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "要塞",
    "漢字": "要塞",
    "台羅": "iau3-sai3",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "還是",
    "漢字": "猶是",
    "台羅": "iau3-si7",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "還算",
    "漢字": "猶算",
    "台羅": "iau3-sng3",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "要素",
    "漢字": "要素",
    "台羅": "iau3-soo3",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "要事",
    "漢字": "要事",
    "台羅": "iau3-su7",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "要地",
    "漢字": "要地",
    "台羅": "iau3-te7",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "要點",
    "漢字": "要點",
    "台羅": "iau3-tiam2",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "要道",
    "漢字": "要道",
    "台羅": "iau3-to7",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "還有救藥",
    "漢字": "猶有救",
    "台羅": "iau3-u7-kiu3",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "姚",
    "漢字": "姚",
    "台羅": "Iau5",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "謠言讒言",
    "漢字": "謠言",
    "台羅": "iau5-giann5",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "遙遙無期",
    "漢字": "遙遙無期",
    "台羅": "iau5-iau5-bu5-ki5",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "遙遙領先",
    "漢字": "遙遙領先",
    "台羅": "iau5-iau5-nnia2-siann",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "遙控",
    "漢字": "遙控",
    "台羅": "iau5-khong3",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "遙遠",
    "漢字": "遙遠",
    "台羅": "iau5-uann2",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "謠傳",
    "漢字": "謠傳",
    "台羅": "iau5-thuann5",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "瑤池",
    "漢字": "瑤池",
    "台羅": "iau5-ti5",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "耀武揚威",
    "漢字": "耀武揚威",
    "台羅": "iau7-bu3-iong5-ui",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "彗星",
    "漢字": "妖星",
    "台羅": "iau-tshenn",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "邀請",
    "漢字": "邀請",
    "台羅": "iau-tshing2",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "邀請",
    "漢字": "邀請",
    "台羅": "iau-tshiann2",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "邀請函",
    "漢字": "邀請函",
    "台羅": "iau-tshiann2-ham5",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "邀請賽",
    "漢字": "邀請賽",
    "台羅": "iau-tshiann2-sai3",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "妖精狐狸精蕩婦",
    "漢字": "妖精",
    "台羅": "iau-tsiann",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "邀集",
    "漢字": "邀集",
    "台羅": "iau-tsip8",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "飢餓",
    "漢字": "枵餓",
    "台羅": "iau-go7",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "要脅",
    "漢字": "要脅",
    "台羅": "iau-hiap8",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "飢饉",
    "漢字": "枵荒",
    "台羅": "iau-hng",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "飢荒",
    "漢字": "枵荒",
    "台羅": "iau-hng",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "妖法",
    "漢字": "妖法",
    "台羅": "iau-huat",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "飢腸轆轆",
    "漢字": "枵揜揜",
    "台羅": "iau-hop8-hop8",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "妖艷",
    "漢字": "妖艷",
    "台羅": "iau-iam7",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "邀宴",
    "漢字": "邀宴",
    "台羅": "iau-iann3",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "邀約",
    "漢字": "邀約",
    "台羅": "iau-iok",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "餓鬼",
    "漢字": "枵監囚",
    "台羅": "iau-kann-siu5",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "妖嬌",
    "漢字": "妖嬌",
    "台羅": "iau-kiau",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "窈窕",
    "漢字": "妖嬌",
    "台羅": "iau-kiau",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "嫵媚",
    "漢字": "妖嬌",
    "台羅": "iau-kiau",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "嬌艷",
    "漢字": "妖嬌",
    "台羅": "iau-kiau",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "要求",
    "漢字": "要求",
    "台羅": "iau-kiu5",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "妖怪",
    "漢字": "妖怪",
    "台羅": "iau-kuai3",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "妖術",
    "漢字": "妖術",
    "台羅": "iau-sut8",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "妖道",
    "漢字": "妖道",
    "台羅": "iau-to7",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "醫務室",
    "漢字": "醫務室",
    "台羅": "i-bu7-sik",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "衣物",
    "漢字": "衣物",
    "台羅": "i-but8",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "艾草",
    "漢字": "醫草",
    "台羅": "i-tshau2",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "醫書",
    "漢字": "醫冊",
    "台羅": "i-tsheh",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "依次",
    "漢字": "依次",
    "台羅": "i-tshu3",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "依循依照",
    "漢字": "依照",
    "台羅": "i-tsiau3",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "衣裳",
    "漢字": "衣裳",
    "台羅": "i-tsiunn5",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "穿戴",
    "漢字": "衣裳身穿",
    "台羅": "i-tsiunn5-sinn-tshing7",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "依存",
    "漢字": "依存",
    "台羅": "i-tsun5",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "依然",
    "漢字": "依原",
    "台羅": "i-guan5",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "痊癒",
    "漢字": "醫原全",
    "台羅": "i-guan5-tsuan5",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "醫學",
    "漢字": "醫學",
    "台羅": "i-hak8",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "醫學系",
    "漢字": "醫學系",
    "台羅": "i-hak8-he7",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "醫學院",
    "漢字": "醫學院",
    "台羅": "i-hak8-inn7",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "醫學界",
    "漢字": "醫學界",
    "台羅": "i-hak8-kai3",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "依法",
    "漢字": "依法",
    "台羅": "i-huat",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "衣服",
    "漢字": "衣服",
    "台羅": "i-hok8",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "醫護",
    "漢字": "醫護",
    "台羅": "i-hoo7",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "依附",
    "漢字": "依附",
    "台羅": "i-hu3",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "依依",
    "漢字": "依依",
    "台羅": "i-i",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "醫院",
    "漢字": "醫院",
    "台羅": "i-inn7",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "醫藥",
    "漢字": "醫藥",
    "台羅": "i-ioh8",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "醫藥費",
    "漢字": "醫藥費",
    "台羅": "i-ioh8-hui3",
    "出處": "台文華文線頂辭典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "依約",
    "漢字": "依約",
    "台羅": "i-iok",
    "出處": "教育部閩語典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "依依不捨",
    "漢字": "依依不捨",
    "台羅": "i-i-put-sia3",
    "出處": "教育部閩語典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "依然",
    "漢字": "依然",
    "台羅": "i-jiann5",
    "出處": "教育部閩語典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "醫界",
    "漢字": "醫界",
    "台羅": "i-kai3",
    "出處": "教育部閩語典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "醫科",
    "漢字": "醫科",
    "台羅": "i-kho",
    "出處": "教育部閩語典",
    "理由": ""
  },
  {
    "流水號": "",
    "華語": "快遞",
    "漢字": "緊送",
    "台羅": "kin2-sang3",
    "出處": "Liz Lin",
    "理由": "義譯"
  },
  {
    "流水號": "",
    "華語": "快遞",
    "漢字": "快遞",
    "台羅": "khuai3-te7",
    "出處": "Liz Lin",
    "理由": "直接念漢字"
  },
  {
    "流水號": "",
    "華語": "快遞",
    "漢字": "隨送",
    "台羅": "sui5-sang3",
    "出處": "Liz Lin",
    "理由": "義譯"
  },
  {
    "流水號": "",
    "華語": "漢堡",
    "漢字": "漢堡",
    "台羅": "han3-po2",
    "出處": "Liz Lin",
    "理由": "直接念漢字"
  },
  {
    "流水號": "",
    "華語": "漢堡",
    "漢字": "美國肉包",
    "台羅": "bi2-kok-bah-pau",
    "出處": "Liz Lin",
    "理由": "義譯"
  },
  {
    "流水號": "",
    "華語": "漢堡",
    "漢字": "麭佮肉",
    "台羅": "phang3-kah-bah",
    "出處": "Liz Lin",
    "理由": "音譯義譯"
  },
  {
    "流水號": "",
    "華語": "帳篷",
    "漢字": "罩篷",
    "台羅": "ta3-phang5",
    "出處": "Liz Lin",
    "理由": "義譯"
  },
  {
    "流水號": "",
    "華語": "帳篷",
    "漢字": "帳篷",
    "台羅": "tiunn3-phang5",
    "出處": "Liz Lin",
    "理由": "直接念漢字"
  }
]

module.exports = PhraseStore = new events.EventEmitter! <<< do
  emitChange: ->
    @emit AppConstants.CHANGE_EVENT
  addChangeListener: (callback) ->
    @on AppConstants.CHANGE_EVENT, callback
  removeChangeListener: (callback) ->
    @removeListener CHANGE_EVENT, callback
  getAll: ->
    if _query then _phrases.filter (-> (it["華語"].indexOf _query) >= 0) else _phrases

PhraseStore.dispatchToken = AppDispatcher.register ({action}) ->
  switch action.type
    | AppConstants.SEARCH_PHRASE =>
      _query := action.query
      PhraseStore.emitChange!
  true
