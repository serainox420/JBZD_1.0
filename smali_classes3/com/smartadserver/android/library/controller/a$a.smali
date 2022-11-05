.class Lcom/smartadserver/android/library/controller/a$a;
.super Ljava/lang/Object;
.source "SASAdViewController.java"

# interfaces
.implements Lcom/smartadserver/android/library/ui/SASAdView$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/controller/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Lcom/smartadserver/android/library/ui/SASAdView$a;

.field b:Z

.field c:J

.field final synthetic d:Lcom/smartadserver/android/library/controller/a;


# direct methods
.method public constructor <init>(Lcom/smartadserver/android/library/controller/a;Lcom/smartadserver/android/library/ui/SASAdView$a;ZJ)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/a$a;->d:Lcom/smartadserver/android/library/controller/a;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p2, p0, Lcom/smartadserver/android/library/controller/a$a;->a:Lcom/smartadserver/android/library/ui/SASAdView$a;

    .line 105
    iput-boolean p3, p0, Lcom/smartadserver/android/library/controller/a$a;->b:Z

    .line 106
    iput-wide p4, p0, Lcom/smartadserver/android/library/controller/a$a;->c:J

    .line 107
    return-void
.end method

.method private b(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$a;->d:Lcom/smartadserver/android/library/controller/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/a;->d()V

    .line 283
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$a;->d:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentLoaderView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$a;->d:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/a$a;->d:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentLoaderView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Landroid/view/View;)V

    .line 286
    :cond_0
    if-eqz p1, :cond_1

    .line 287
    invoke-static {}, Lcom/smartadserver/android/library/controller/a;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adElementLoadFail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$a;->a:Lcom/smartadserver/android/library/ui/SASAdView$a;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$a;->a:Lcom/smartadserver/android/library/ui/SASAdView$a;

    invoke-interface {v0, p1}, Lcom/smartadserver/android/library/ui/SASAdView$a;->adLoadingFailed(Ljava/lang/Exception;)V

    .line 292
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/smartadserver/android/library/model/SASAdElement;)V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$a;->a:Lcom/smartadserver/android/library/ui/SASAdView$a;

    instance-of v0, v0, Lcom/smartadserver/android/library/ui/SASAdView$g;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$a;->a:Lcom/smartadserver/android/library/ui/SASAdView$a;

    check-cast v0, Lcom/smartadserver/android/library/ui/SASAdView$g;

    invoke-interface {v0, p1}, Lcom/smartadserver/android/library/ui/SASAdView$g;->a(Lcom/smartadserver/android/library/model/SASAdElement;)V

    .line 300
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$a;->a:Lcom/smartadserver/android/library/ui/SASAdView$a;

    instance-of v0, v0, Lcom/smartadserver/android/library/ui/SASAdView$g;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$a;->a:Lcom/smartadserver/android/library/ui/SASAdView$a;

    check-cast v0, Lcom/smartadserver/android/library/ui/SASAdView$g;

    invoke-interface {v0, p1}, Lcom/smartadserver/android/library/ui/SASAdView$g;->a(Ljava/lang/Exception;)V

    .line 307
    :cond_0
    return-void
.end method

.method public adLoadingCompleted(Lcom/smartadserver/android/library/model/SASAdElement;)V
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 112
    iget-object v2, p0, Lcom/smartadserver/android/library/controller/a$a;->d:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v2}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v2

    iput-object p1, v2, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    .line 115
    iget-object v2, p0, Lcom/smartadserver/android/library/controller/a$a;->d:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v2}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v2

    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASAdElement;->isCloseOnClick()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/smartadserver/android/library/ui/SASAdView;->setCloseOnclick(Z)V

    .line 118
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASAdElement;->getCloseButtonAppearanceDelay()I

    move-result v2

    .line 119
    if-ltz v2, :cond_0

    .line 120
    iget-object v5, p0, Lcom/smartadserver/android/library/controller/a$a;->d:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v5}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/smartadserver/android/library/ui/SASAdView;->setCloseButtonAppearanceDelay(I)V

    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASAdElement;->isDisplayCloseAppearanceCountDown()Z

    move-result v2

    .line 123
    iget-object v5, p0, Lcom/smartadserver/android/library/controller/a$a;->d:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v5}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/smartadserver/android/library/ui/SASAdView;->setDisplayCloseAppearanceCountDown(Z)V

    .line 126
    const/4 v5, 0x0

    .line 131
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASAdElement;->getHtmlContents()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    instance-of v2, p1, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    if-nez v2, :cond_1

    instance-of v2, p1, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;

    if-eqz v2, :cond_6

    :cond_1
    move v2, v4

    .line 136
    :goto_0
    iget-object v6, p0, Lcom/smartadserver/android/library/controller/a$a;->d:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v6}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v6

    iget-object v6, v6, Lcom/smartadserver/android/library/ui/SASAdView;->f:Lcom/smartadserver/android/library/e/a/c;

    invoke-virtual {v6}, Lcom/smartadserver/android/library/e/a/c;->b()Z

    move-result v6

    .line 138
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASAdElement;->getCandidateMediationAds()[Lcom/smartadserver/android/library/model/a;

    move-result-object v7

    .line 140
    if-eqz v7, :cond_10

    if-eqz v6, :cond_10

    .line 151
    iget-wide v6, p0, Lcom/smartadserver/android/library/controller/a$a;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 152
    invoke-static {}, Lcom/smartadserver/android/library/controller/a;->f()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "remainingTime for mediation "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v8, p0, Lcom/smartadserver/android/library/controller/a$a;->d:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v8}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v8

    iget-object v8, v8, Lcom/smartadserver/android/library/ui/SASAdView;->m:Lcom/smartadserver/android/library/c/h;

    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASAdElement;->getCandidateMediationAds()[Lcom/smartadserver/android/library/model/a;

    move-result-object v9

    invoke-virtual {v8, v9, v6, v7}, Lcom/smartadserver/android/library/c/h;->a([Lcom/smartadserver/android/library/model/a;J)Lcom/smartadserver/android/library/model/a;

    move-result-object v6

    .line 157
    invoke-virtual {p1, v6}, Lcom/smartadserver/android/library/model/SASAdElement;->setSelectedMediationAd(Lcom/smartadserver/android/library/model/a;)V

    .line 159
    if-eqz v6, :cond_7

    .line 165
    iget-object v2, p0, Lcom/smartadserver/android/library/controller/a$a;->d:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v2, v6}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;Lcom/smartadserver/android/library/model/a;)V

    move v6, v3

    move v2, v4

    .line 172
    :goto_1
    if-eqz v6, :cond_f

    .line 175
    instance-of v6, p1, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    if-eqz v6, :cond_8

    .line 180
    :try_start_0
    iget-wide v6, p0, Lcom/smartadserver/android/library/controller/a$a;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 181
    invoke-static {}, Lcom/smartadserver/android/library/controller/a;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "remainingTime for native video "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v2, p0, Lcom/smartadserver/android/library/controller/a$a;->d:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v2}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v8

    move-object v0, p1

    check-cast v0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    move-object v2, v0

    invoke-virtual {v8, v2, v6, v7}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;J)V

    .line 185
    iget-object v2, p0, Lcom/smartadserver/android/library/controller/a$a;->d:Lcom/smartadserver/android/library/controller/a;

    iget-object v2, v2, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    const-string v6, "default"

    invoke-virtual {v2, v6}, Lcom/smartadserver/android/library/controller/mraid/a;->setState(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/smartadserver/android/library/exception/SASAdDisplayException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v5

    move v3, v4

    .line 227
    :goto_2
    if-eqz v3, :cond_3

    .line 235
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASAdElement;->getImpUrls()[Ljava/lang/String;

    move-result-object v4

    .line 236
    array-length v5, v4

    if-eqz v5, :cond_2

    .line 237
    iget-object v5, p0, Lcom/smartadserver/android/library/controller/a$a;->d:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v5}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/smartadserver/android/library/ui/SASAdView;->a([Ljava/lang/String;)V

    .line 241
    :cond_2
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASAdElement;->getViewabilityPixels()[Lcom/smartadserver/android/library/model/d;

    move-result-object v4

    .line 242
    if-eqz v4, :cond_3

    .line 243
    iget-object v4, p0, Lcom/smartadserver/android/library/controller/a$a;->d:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v4}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v4

    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASAdElement;->getViewabilityPixels()[Lcom/smartadserver/android/library/model/d;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartadserver/android/library/ui/SASAdView;->a([Lcom/smartadserver/android/library/model/d;)V

    .line 248
    :cond_3
    :goto_3
    invoke-static {}, Lcom/smartadserver/android/library/controller/a;->f()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Display ad finished"

    invoke-static {v4, v5}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    if-eqz v3, :cond_d

    .line 253
    iget-object v2, p0, Lcom/smartadserver/android/library/controller/a$a;->a:Lcom/smartadserver/android/library/ui/SASAdView$a;

    if-eqz v2, :cond_4

    .line 255
    :try_start_1
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASAdElement;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartadserver/android/library/model/SASAdElement;

    .line 256
    iget-object v3, p0, Lcom/smartadserver/android/library/controller/a$a;->a:Lcom/smartadserver/android/library/ui/SASAdView$a;

    invoke-interface {v3, v2}, Lcom/smartadserver/android/library/ui/SASAdView$a;->adLoadingCompleted(Lcom/smartadserver/android/library/model/SASAdElement;)V
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 263
    :cond_4
    :goto_4
    iget-object v2, p0, Lcom/smartadserver/android/library/controller/a$a;->d:Lcom/smartadserver/android/library/controller/a;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/controller/a;->d()V

    .line 265
    iget-object v2, p0, Lcom/smartadserver/android/library/controller/a$a;->d:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v2}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentLoaderView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 266
    iget-object v2, p0, Lcom/smartadserver/android/library/controller/a$a;->d:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v2}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v2

    iget-object v3, p0, Lcom/smartadserver/android/library/controller/a$a;->d:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v3}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentLoaderView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Landroid/view/View;)V

    .line 274
    :cond_5
    :goto_5
    return-void

    :cond_6
    move v2, v3

    .line 131
    goto/16 :goto_0

    .line 167
    :cond_7
    new-instance v5, Lcom/smartadserver/android/library/exception/SASNoAdToDeliverException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No mediation ad available. Details: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/smartadserver/android/library/controller/a$a;->d:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v7}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v7

    iget-object v7, v7, Lcom/smartadserver/android/library/ui/SASAdView;->m:Lcom/smartadserver/android/library/c/h;

    invoke-virtual {v7}, Lcom/smartadserver/android/library/c/h;->b()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/smartadserver/android/library/exception/SASNoAdToDeliverException;-><init>(Ljava/lang/String;)V

    move v6, v2

    move v2, v3

    goto/16 :goto_1

    .line 190
    :cond_8
    instance-of v6, p1, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;

    if-eqz v6, :cond_b

    .line 192
    iget-object v3, p0, Lcom/smartadserver/android/library/controller/a$a;->d:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v3}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v3

    instance-of v3, v3, Lcom/smartadserver/android/library/SASInterstitialView;

    if-eqz v3, :cond_9

    .line 194
    new-instance v5, Lcom/smartadserver/android/library/exception/SASAdDisplayException;

    const-string v3, "Parallax format is not compatible with SASInterstitialView"

    invoke-direct {v5, v3}, Lcom/smartadserver/android/library/exception/SASAdDisplayException;-><init>(Ljava/lang/String;)V

    move v3, v2

    move-object v2, v5

    goto/16 :goto_2

    .line 195
    :cond_9
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-ge v3, v6, :cond_a

    .line 196
    new-instance v5, Lcom/smartadserver/android/library/exception/SASAdDisplayException;

    const-string v3, "Parallax format is not supported on Android versions prior to 3.0 (Honeycomb)"

    invoke-direct {v5, v3}, Lcom/smartadserver/android/library/exception/SASAdDisplayException;-><init>(Ljava/lang/String;)V

    move v3, v2

    move-object v2, v5

    goto/16 :goto_2

    .line 199
    :cond_a
    iget-object v2, p0, Lcom/smartadserver/android/library/controller/a$a;->d:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v2}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v2

    new-instance v3, Lcom/smartadserver/android/library/controller/a$a$1;

    invoke-direct {v3, p0}, Lcom/smartadserver/android/library/controller/a$a$1;-><init>(Lcom/smartadserver/android/library/controller/a$a;)V

    invoke-virtual {v2, v3}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 206
    iget-object v2, p0, Lcom/smartadserver/android/library/controller/a$a;->d:Lcom/smartadserver/android/library/controller/a;

    iget-object v2, v2, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    const-string v3, "default"

    invoke-virtual {v2, v3}, Lcom/smartadserver/android/library/controller/mraid/a;->setState(Ljava/lang/String;)V

    move-object v2, v5

    move v3, v4

    goto/16 :goto_2

    .line 213
    :cond_b
    iget-boolean v2, p0, Lcom/smartadserver/android/library/controller/a$a;->b:Z

    if-nez v2, :cond_c

    .line 215
    invoke-virtual {p1, v3}, Lcom/smartadserver/android/library/model/SASAdElement;->setPrefetchable(Z)V

    .line 219
    :cond_c
    iget-object v2, p0, Lcom/smartadserver/android/library/controller/a$a;->d:Lcom/smartadserver/android/library/controller/a;

    invoke-virtual {v2, p1}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/model/SASAdElement;)Z

    move-result v3

    .line 221
    if-nez v3, :cond_e

    .line 223
    new-instance v5, Lcom/smartadserver/android/library/exception/SASAdDisplayException;

    const-string v2, "Ad was not properly displayed"

    invoke-direct {v5, v2}, Lcom/smartadserver/android/library/exception/SASAdDisplayException;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    goto/16 :goto_2

    .line 257
    :catch_0
    move-exception v2

    .line 259
    iget-object v2, p0, Lcom/smartadserver/android/library/controller/a$a;->a:Lcom/smartadserver/android/library/ui/SASAdView$a;

    invoke-interface {v2, p1}, Lcom/smartadserver/android/library/ui/SASAdView$a;->adLoadingCompleted(Lcom/smartadserver/android/library/model/SASAdElement;)V

    goto/16 :goto_4

    .line 271
    :cond_d
    invoke-direct {p0, v2}, Lcom/smartadserver/android/library/controller/a$a;->b(Ljava/lang/Exception;)V

    goto/16 :goto_5

    .line 186
    :catch_1
    move-exception v2

    goto/16 :goto_2

    :cond_e
    move-object v2, v5

    goto/16 :goto_2

    :cond_f
    move v3, v2

    move-object v2, v5

    goto/16 :goto_3

    :cond_10
    move v6, v2

    move v2, v3

    goto/16 :goto_1
.end method

.method public adLoadingFailed(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/controller/a$a;->b(Ljava/lang/Exception;)V

    .line 278
    return-void
.end method
