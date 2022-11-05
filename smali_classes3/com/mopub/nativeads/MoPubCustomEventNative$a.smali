.class Lcom/mopub/nativeads/MoPubCustomEventNative$a;
.super Lcom/mopub/nativeads/StaticNativeAd;
.source "MoPubCustomEventNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/MoPubCustomEventNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/MoPubCustomEventNative$a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

.field private final c:Lorg/json/JSONObject;

.field private final d:Lcom/mopub/nativeads/ImpressionTracker;

.field private final e:Lcom/mopub/nativeads/NativeClickHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/mopub/nativeads/ImpressionTracker;Lcom/mopub/nativeads/NativeClickHandler;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;)V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/mopub/nativeads/StaticNativeAd;-><init>()V

    .line 116
    iput-object p2, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->c:Lorg/json/JSONObject;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->a:Landroid/content/Context;

    .line 118
    iput-object p3, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->d:Lcom/mopub/nativeads/ImpressionTracker;

    .line 119
    iput-object p4, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->e:Lcom/mopub/nativeads/NativeClickHandler;

    .line 120
    iput-object p5, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->b:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/mopub/nativeads/MoPubCustomEventNative$a;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->b:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    return-object v0
.end method

.method private a(Lcom/mopub/nativeads/MoPubCustomEventNative$a$a;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 171
    :try_start_0
    sget-object v0, Lcom/mopub/nativeads/MoPubCustomEventNative$1;->a:[I

    invoke-virtual {p1}, Lcom/mopub/nativeads/MoPubCustomEventNative$a$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to add JSON key to internal mapping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/mopub/nativeads/MoPubCustomEventNative$a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 210
    :goto_0
    return-void

    .line 173
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->setMainImageUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    iget-boolean v1, p1, Lcom/mopub/nativeads/MoPubCustomEventNative$a$a;->b:Z

    if-nez v1, :cond_0

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring class cast exception for optional key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/mopub/nativeads/MoPubCustomEventNative$a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :pswitch_1
    :try_start_1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->setIconImageUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 182
    :pswitch_3
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->setClickDestinationUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 188
    :pswitch_5
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->setCallToAction(Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :pswitch_6
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :pswitch_7
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :pswitch_8
    invoke-static {p2}, Lcom/mopub/common/util/Numbers;->parseDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->setStarRating(Ljava/lang/Double;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 207
    :cond_0
    throw v0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 221
    if-eqz p1, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;)Z
    .locals 3

    .prologue
    .line 159
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 160
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 161
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    :cond_0
    sget-object v1, Lcom/mopub/nativeads/MoPubCustomEventNative$a$a;->c:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 213
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->b(Ljava/lang/Object;)V

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->addClickTracker(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->d:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/ImpressionTracker;->removeView(Landroid/view/View;)V

    .line 260
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->e:Lcom/mopub/nativeads/NativeClickHandler;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/NativeClickHandler;->clearOnClickListener(Landroid/view/View;)V

    .line 261
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->d:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v0}, Lcom/mopub/nativeads/ImpressionTracker;->destroy()V

    .line 266
    return-void
.end method

.method e()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->c:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->a(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "JSONObject did not contain required keys."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->c:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 129
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    invoke-static {v0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a$a;->a(Ljava/lang/String;)Lcom/mopub/nativeads/MoPubCustomEventNative$a$a;

    move-result-object v2

    .line 133
    if-eqz v2, :cond_1

    .line 135
    :try_start_0
    iget-object v3, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->c:Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->a(Lcom/mopub/nativeads/MoPubCustomEventNative$a$a;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v1

    .line 137
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject key ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") contained unexpected value."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_1
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->c:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 143
    :cond_2
    const-string v0, "https://www.mopub.com/optout"

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->setPrivacyInformationIconClickThroughUrl(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->g()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/mopub/nativeads/MoPubCustomEventNative$a$1;

    invoke-direct {v2, p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a$1;-><init>(Lcom/mopub/nativeads/MoPubCustomEventNative$a;)V

    invoke-static {v0, v1, v2}, Lcom/mopub/nativeads/NativeImageHelper;->preCacheImages(Landroid/content/Context;Ljava/util/List;Lcom/mopub/nativeads/NativeImageHelper$ImageListener;)V

    .line 156
    return-void
.end method

.method f()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->getExtras()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 227
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->getExtras()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 228
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 229
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 233
    :cond_1
    return-object v2
.end method

.method g()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->getMainImageUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->getMainImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->getIconImageUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->getIconImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 247
    return-object v0
.end method

.method public handleClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->b()V

    .line 277
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->e:Lcom/mopub/nativeads/NativeClickHandler;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->getClickDestinationUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mopub/nativeads/NativeClickHandler;->openClickDestinationUrl(Ljava/lang/String;Landroid/view/View;)V

    .line 278
    return-void
.end method

.method public prepare(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->d:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v0, p1, p0}, Lcom/mopub/nativeads/ImpressionTracker;->addView(Landroid/view/View;Lcom/mopub/nativeads/ImpressionInterface;)V

    .line 254
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->e:Lcom/mopub/nativeads/NativeClickHandler;

    invoke-virtual {v0, p1, p0}, Lcom/mopub/nativeads/NativeClickHandler;->setOnClickListener(Landroid/view/View;Lcom/mopub/nativeads/ClickInterface;)V

    .line 255
    return-void
.end method

.method public recordImpression(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->a()V

    .line 272
    return-void
.end method
