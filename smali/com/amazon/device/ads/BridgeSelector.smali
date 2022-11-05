.class Lcom/amazon/device/ads/BridgeSelector;
.super Ljava/lang/Object;
.source "BridgeSelector.java"


# static fields
.field private static instance:Lcom/amazon/device/ads/BridgeSelector;


# instance fields
.field private final amazonAdSDKViewableBridgeFactory:Lcom/amazon/device/ads/AmazonViewableAdSDKBridgeFactory;

.field private bridgesForCT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/amazon/device/ads/AAXCreative;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/amazon/device/ads/AdSDKBridgeFactory;",
            ">;>;"
        }
    .end annotation
.end field

.field private bridgesForPattern:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/amazon/device/ads/AdSDKBridgeFactory;",
            ">;>;"
        }
    .end annotation
.end field

.field private bridgesForResourcePattern:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/amazon/device/ads/AdSDKBridgeFactory;",
            ">;>;"
        }
    .end annotation
.end field

.field private patterns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/amazon/device/ads/BridgeSelector;

    invoke-direct {v0}, Lcom/amazon/device/ads/BridgeSelector;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/BridgeSelector;->instance:Lcom/amazon/device/ads/BridgeSelector;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridgeFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/AmazonViewableAdSDKBridgeFactory;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/BridgeSelector;-><init>(Lcom/amazon/device/ads/AmazonViewableAdSDKBridgeFactory;)V

    .line 41
    invoke-virtual {p0}, Lcom/amazon/device/ads/BridgeSelector;->initialize()V

    .line 42
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AmazonViewableAdSDKBridgeFactory;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/amazon/device/ads/BridgeSelector;->amazonAdSDKViewableBridgeFactory:Lcom/amazon/device/ads/AmazonViewableAdSDKBridgeFactory;

    .line 47
    return-void
.end method

.method public static getInstance()Lcom/amazon/device/ads/BridgeSelector;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/amazon/device/ads/BridgeSelector;->instance:Lcom/amazon/device/ads/BridgeSelector;

    return-object v0
.end method

.method private getPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/amazon/device/ads/BridgeSelector;->patterns:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 202
    if-nez v0, :cond_0

    .line 204
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/amazon/device/ads/BridgeSelector;->patterns:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addBridgeFactory(Lcom/amazon/device/ads/AAXCreative;Lcom/amazon/device/ads/AdSDKBridgeFactory;)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForCT:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 75
    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 78
    iget-object v1, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForCT:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public addBridgeFactoryForHtmlScriptTag(Ljava/lang/String;Lcom/amazon/device/ads/AdSDKBridgeFactory;)V
    .locals 3

    .prologue
    .line 97
    const-string v0, "<[Ss][Cc][Rr][Ii][Pp][Tt](\\s[^>]*\\s|\\s)[Ss][Rr][Cc]\\s*=\\s*[\"\']%s[\"\']"

    .line 98
    const-string v0, "<[Ss][Cc][Rr][Ii][Pp][Tt](\\s[^>]*\\s|\\s)[Ss][Rr][Cc]\\s*=\\s*[\"\']%s[\"\']"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 99
    iget-object v0, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForPattern:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 100
    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 103
    iget-object v2, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForPattern:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public addBridgeFactoryForResourceLoad(Ljava/lang/String;Lcom/amazon/device/ads/AdSDKBridgeFactory;)V
    .locals 3

    .prologue
    .line 116
    const-string v0, ".*\\W%s$|^%s$"

    .line 117
    const-string v0, ".*\\W%s$|^%s$"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 118
    iget-object v0, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForResourcePattern:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 119
    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 122
    iget-object v2, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForResourcePattern:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v1, p0, Lcom/amazon/device/ads/BridgeSelector;->amazonAdSDKViewableBridgeFactory:Lcom/amazon/device/ads/AmazonViewableAdSDKBridgeFactory;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public addBridgeFactoryForScript(Ljava/lang/String;Lcom/amazon/device/ads/AdSDKBridgeFactory;)V
    .locals 0

    .prologue
    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/amazon/device/ads/BridgeSelector;->addBridgeFactoryForHtmlScriptTag(Ljava/lang/String;Lcom/amazon/device/ads/AdSDKBridgeFactory;)V

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/amazon/device/ads/BridgeSelector;->addBridgeFactoryForResourceLoad(Ljava/lang/String;Lcom/amazon/device/ads/AdSDKBridgeFactory;)V

    .line 93
    return-void
.end method

.method public getBridgeFactories(Lcom/amazon/device/ads/AAXCreative;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/ads/AAXCreative;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/device/ads/AdSDKBridgeFactory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForCT:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 142
    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/ads/BridgeSelector;->amazonAdSDKViewableBridgeFactory:Lcom/amazon/device/ads/AmazonViewableAdSDKBridgeFactory;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    return-object v0
.end method

.method public getBridgeFactories(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/device/ads/AdSDKBridgeFactory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 158
    iget-object v0, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForPattern:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/BridgeSelector;->getPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 161
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 162
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    iget-object v3, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForPattern:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/BridgeSelector;->amazonAdSDKViewableBridgeFactory:Lcom/amazon/device/ads/AmazonViewableAdSDKBridgeFactory;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    return-object v1
.end method

.method public getBridgeFactoriesForResourceLoad(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/device/ads/AdSDKBridgeFactory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 177
    iget-object v0, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForResourcePattern:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 179
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/BridgeSelector;->getPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 180
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 181
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    iget-object v3, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForResourcePattern:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/BridgeSelector;->amazonAdSDKViewableBridgeFactory:Lcom/amazon/device/ads/AmazonViewableAdSDKBridgeFactory;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    return-object v1
.end method

.method initialize()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForCT:Ljava/util/HashMap;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForPattern:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/BridgeSelector;->patterns:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForResourcePattern:Ljava/util/HashMap;

    .line 56
    new-instance v0, Lcom/amazon/device/ads/AmazonAdSDKBridgeFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/AmazonAdSDKBridgeFactory;-><init>()V

    .line 57
    const-string v1, "amazon.js"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/device/ads/BridgeSelector;->addBridgeFactoryForScript(Ljava/lang/String;Lcom/amazon/device/ads/AdSDKBridgeFactory;)V

    .line 59
    new-instance v0, Lcom/amazon/device/ads/MraidAdSDKBridgeFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MraidAdSDKBridgeFactory;-><init>()V

    .line 60
    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->MRAID1:Lcom/amazon/device/ads/AAXCreative;

    invoke-virtual {p0, v1, v0}, Lcom/amazon/device/ads/BridgeSelector;->addBridgeFactory(Lcom/amazon/device/ads/AAXCreative;Lcom/amazon/device/ads/AdSDKBridgeFactory;)V

    .line 61
    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->MRAID2:Lcom/amazon/device/ads/AAXCreative;

    invoke-virtual {p0, v1, v0}, Lcom/amazon/device/ads/BridgeSelector;->addBridgeFactory(Lcom/amazon/device/ads/AAXCreative;Lcom/amazon/device/ads/AdSDKBridgeFactory;)V

    .line 62
    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

    invoke-virtual {p0, v1, v0}, Lcom/amazon/device/ads/BridgeSelector;->addBridgeFactory(Lcom/amazon/device/ads/AAXCreative;Lcom/amazon/device/ads/AdSDKBridgeFactory;)V

    .line 63
    const-string v1, "mraid.js"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/device/ads/BridgeSelector;->addBridgeFactoryForScript(Ljava/lang/String;Lcom/amazon/device/ads/AdSDKBridgeFactory;)V

    .line 64
    return-void
.end method
