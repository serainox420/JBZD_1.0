.class public abstract Lcom/mopub/nativeads/BaseNativeAd;
.super Ljava/lang/Object;
.source "BaseNativeAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->a:Ljava/util/Set;

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->b:Ljava/util/Set;

    .line 35
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->c:Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->c:Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;

    invoke-interface {v0}, Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;->onAdImpressed()V

    .line 78
    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 92
    instance-of v0, p1, Lorg/json/JSONArray;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Expected impression trackers of type JSONArray."

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    check-cast p1, Lorg/json/JSONArray;

    .line 97
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 99
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mopub/nativeads/BaseNativeAd;->addImpressionTracker(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    .line 102
    const-string v1, "Unable to parse impression trackers."

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 105
    :cond_1
    return-void
.end method

.method public final addClickTracker(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 131
    const-string v0, "clickTracker url is not allowed to be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final addImpressionTracker(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 124
    const-string v0, "impressionTracker url is not allowed to be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->c:Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->c:Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;

    invoke-interface {v0}, Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;->onAdClicked()V

    .line 89
    :cond_0
    return-void
.end method

.method protected final b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 108
    instance-of v0, p1, Lorg/json/JSONArray;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Expected click trackers of type JSONArray."

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    check-cast p1, Lorg/json/JSONArray;

    .line 113
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 115
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mopub/nativeads/BaseNativeAd;->addClickTracker(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    .line 118
    const-string v1, "Unable to parse click trackers."

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 121
    :cond_1
    return-void
.end method

.method c()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/mopub/nativeads/BaseNativeAd;->a:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public abstract clear(Landroid/view/View;)V
.end method

.method d()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/mopub/nativeads/BaseNativeAd;->b:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public abstract destroy()V
.end method

.method public abstract prepare(Landroid/view/View;)V
.end method

.method public setNativeEventListener(Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/mopub/nativeads/BaseNativeAd;->c:Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;

    .line 66
    return-void
.end method
