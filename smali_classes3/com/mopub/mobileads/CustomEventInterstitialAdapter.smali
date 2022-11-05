.class public Lcom/mopub/mobileads/CustomEventInterstitialAdapter;
.super Ljava/lang/Object;
.source "CustomEventInterstitialAdapter.java"

# interfaces
.implements Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/CustomEventInterstitialAdapter$a;
    }
.end annotation


# static fields
.field public static final DEFAULT_INTERSTITIAL_TIMEOUT_DELAY:I = 0x7530


# instance fields
.field private final a:Lcom/mopub/mobileads/MoPubInterstitial;

.field private b:Z

.field private c:Lcom/mopub/mobileads/CustomEventInterstitialAdapter$a;

.field private d:Lcom/mopub/mobileads/CustomEventInterstitial;

.field private e:Landroid/content/Context;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/os/Handler;

.field private final i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/MoPubInterstitial;Ljava/lang/String;Ljava/util/Map;JLcom/mopub/common/AdReport;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/MoPubInterstitial;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/mopub/common/AdReport;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->h:Landroid/os/Handler;

    .line 44
    iput-object p1, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->e:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter$1;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter$1;-><init>(Lcom/mopub/mobileads/CustomEventInterstitialAdapter;)V

    iput-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->i:Ljava/lang/Runnable;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to invoke custom event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 57
    :try_start_0
    invoke-static {p2}, Lcom/mopub/mobileads/factories/CustomEventInterstitialFactory;->create(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventInterstitial;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->d:Lcom/mopub/mobileads/CustomEventInterstitial;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->g:Ljava/util/Map;

    .line 65
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->getLocalExtras()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->f:Ljava/util/Map;

    .line 66
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->f:Ljava/util/Map;

    const-string v1, "location"

    iget-object v2, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubInterstitial;->getLocation()Landroid/location/Location;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->f:Ljava/util/Map;

    const-string v1, "broadcastIdentifier"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->f:Ljava/util/Map;

    const-string v1, "mopub-intent-ad-report"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t locate or instantiate custom event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->onCustomEventInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

.method private f()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->b()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    .line 140
    :cond_0
    const/16 v0, 0x7530

    .line 143
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->d:Lcom/mopub/mobileads/CustomEventInterstitial;

    if-nez v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->i:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->f()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->d:Lcom/mopub/mobileads/CustomEventInterstitial;

    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->f:Ljava/util/Map;

    iget-object v3, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->g:Ljava/util/Map;

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/mopub/mobileads/CustomEventInterstitial;->loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string v1, "Loading a custom event interstitial threw an exception."

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method a(Lcom/mopub/mobileads/CustomEventInterstitialAdapter$a;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->c:Lcom/mopub/mobileads/CustomEventInterstitialAdapter$a;

    .line 130
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->d:Lcom/mopub/mobileads/CustomEventInterstitial;

    if-nez v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->d:Lcom/mopub/mobileads/CustomEventInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventInterstitial;->showInterstitial()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    const-string v1, "Showing a custom event interstitial threw an exception."

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->d:Lcom/mopub/mobileads/CustomEventInterstitial;

    if-eqz v0, :cond_0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->d:Lcom/mopub/mobileads/CustomEventInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventInterstitial;->onInvalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->d:Lcom/mopub/mobileads/CustomEventInterstitial;

    .line 117
    iput-object v2, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->e:Landroid/content/Context;

    .line 118
    iput-object v2, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->g:Ljava/util/Map;

    .line 119
    iput-object v2, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->f:Ljava/util/Map;

    .line 120
    iput-object v2, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->c:Lcom/mopub/mobileads/CustomEventInterstitialAdapter$a;

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->b:Z

    .line 122
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    const-string v1, "Invalidating a custom event interstitial threw an exception."

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method d()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->b:Z

    return v0
.end method

.method public onInterstitialClicked()V
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->c:Lcom/mopub/mobileads/CustomEventInterstitialAdapter$a;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->c:Lcom/mopub/mobileads/CustomEventInterstitialAdapter$a;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter$a;->onCustomEventInterstitialClicked()V

    goto :goto_0
.end method

.method public onInterstitialDismissed()V
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->c:Lcom/mopub/mobileads/CustomEventInterstitialAdapter$a;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->c:Lcom/mopub/mobileads/CustomEventInterstitialAdapter$a;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter$a;->onCustomEventInterstitialDismissed()V

    goto :goto_0
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->c:Lcom/mopub/mobileads/CustomEventInterstitialAdapter$a;

    if-eqz v0, :cond_0

    .line 177
    if-nez p1, :cond_2

    .line 178
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 180
    :cond_2
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->e()V

    .line 181
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->c:Lcom/mopub/mobileads/CustomEventInterstitialAdapter$a;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter$a;->onCustomEventInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onInterstitialLoaded()V
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->e()V

    .line 165
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->c:Lcom/mopub/mobileads/CustomEventInterstitialAdapter$a;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->c:Lcom/mopub/mobileads/CustomEventInterstitialAdapter$a;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter$a;->onCustomEventInterstitialLoaded()V

    goto :goto_0
.end method

.method public onInterstitialShown()V
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->c:Lcom/mopub/mobileads/CustomEventInterstitialAdapter$a;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->c:Lcom/mopub/mobileads/CustomEventInterstitialAdapter$a;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter$a;->onCustomEventInterstitialShown()V

    goto :goto_0
.end method

.method public onLeaveApplication()V
    .locals 0

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->onInterstitialClicked()V

    .line 210
    return-void
.end method
