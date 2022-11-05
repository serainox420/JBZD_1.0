.class Lcom/amazon/device/ads/AAXParameter$VideoOptionsParameter;
.super Lcom/amazon/device/ads/AAXParameter$JSONObjectParameter;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VideoOptionsParameter"
.end annotation


# static fields
.field private static final MAXIMUM_DURATION_DEFAULT:I = 0x7530

.field private static final MINIMUM_DURATION_DEFAULT:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 621
    const-string v0, "video"

    const-string v1, "debug.videoOptions"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AAXParameter$JSONObjectParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    return-void
.end method


# virtual methods
.method protected bridge synthetic getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$VideoOptionsParameter;->getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/16 v1, 0x7530

    const/4 v0, 0x0

    .line 627
    const/4 v2, 0x0

    .line 629
    new-instance v3, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;

    invoke-direct {v3, p1}, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;-><init>(Lcom/amazon/device/ads/AAXParameter$ParameterData;)V

    invoke-virtual {v3}, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;->isVideoAdsEnabled()Z

    move-result v3

    .line 630
    if-eqz v3, :cond_2

    .line 632
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 635
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$000(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "minVideoAdDuration"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 637
    new-instance v3, Lcom/amazon/device/ads/Parsers$IntegerParser;

    invoke-direct {v3}, Lcom/amazon/device/ads/Parsers$IntegerParser;-><init>()V

    invoke-virtual {v3, v0}, Lcom/amazon/device/ads/Parsers$IntegerParser;->setDefaultValue(I)Lcom/amazon/device/ads/Parsers$IntegerParser;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/AAXParameter;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazon/device/ads/Parsers$IntegerParser;->setParseErrorLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/Parsers$IntegerParser;

    move-result-object v0

    const-string v3, "The minVideoAdDuration advanced option could not be parsed properly."

    invoke-virtual {v0, v3}, Lcom/amazon/device/ads/Parsers$IntegerParser;->setParseErrorLogMessage(Ljava/lang/String;)Lcom/amazon/device/ads/Parsers$IntegerParser;

    move-result-object v3

    .line 641
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$000(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v0

    const-string v4, "minVideoAdDuration"

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/amazon/device/ads/Parsers$IntegerParser;->parse(Ljava/lang/String;)I

    move-result v0

    .line 643
    :cond_0
    const-string v3, "minAdDuration"

    invoke-static {v2, v3, v0}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 646
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$000(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "maxVideoAdDuration"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    new-instance v0, Lcom/amazon/device/ads/Parsers$IntegerParser;

    invoke-direct {v0}, Lcom/amazon/device/ads/Parsers$IntegerParser;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/Parsers$IntegerParser;->setDefaultValue(I)Lcom/amazon/device/ads/Parsers$IntegerParser;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/AAXParameter;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/Parsers$IntegerParser;->setParseErrorLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/Parsers$IntegerParser;

    move-result-object v0

    const-string v1, "The maxVideoAdDuration advanced option could not be parsed properly."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/Parsers$IntegerParser;->setParseErrorLogMessage(Ljava/lang/String;)Lcom/amazon/device/ads/Parsers$IntegerParser;

    move-result-object v1

    .line 652
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$000(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "maxVideoAdDuration"

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/Parsers$IntegerParser;->parse(Ljava/lang/String;)I

    move-result v0

    .line 654
    :goto_0
    const-string v1, "maxAdDuration"

    invoke-static {v2, v1, v0}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    move-object v0, v2

    .line 656
    :goto_1
    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method
