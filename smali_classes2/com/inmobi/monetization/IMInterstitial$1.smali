.class Lcom/inmobi/monetization/IMInterstitial$1;
.super Ljava/lang/Object;
.source "IMInterstitial.java"

# interfaces
.implements Lcom/inmobi/monetization/internal/IMAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/monetization/IMInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/monetization/IMInterstitial;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial$1;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdInteraction(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$1;->a:Lcom/inmobi/monetization/IMInterstitial;

    const/16 v1, 0x69

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;ILcom/inmobi/monetization/internal/AdErrorCode;Ljava/util/Map;)V

    .line 333
    return-void
.end method

.method public onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$1;->a:Lcom/inmobi/monetization/IMInterstitial;

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->INIT:Lcom/inmobi/monetization/IMInterstitial$State;

    invoke-static {v0, v1}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMInterstitial$State;)Lcom/inmobi/monetization/IMInterstitial$State;

    .line 327
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$1;->a:Lcom/inmobi/monetization/IMInterstitial;

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;ILcom/inmobi/monetization/internal/AdErrorCode;Ljava/util/Map;)V

    .line 328
    return-void
.end method

.method public onAdRequestSucceeded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 319
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$1;->a:Lcom/inmobi/monetization/IMInterstitial;

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->READY:Lcom/inmobi/monetization/IMInterstitial$State;

    invoke-static {v0, v1}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMInterstitial$State;)Lcom/inmobi/monetization/IMInterstitial$State;

    .line 320
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$1;->a:Lcom/inmobi/monetization/IMInterstitial;

    const/16 v1, 0x64

    invoke-static {v0, v1, v2, v2}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;ILcom/inmobi/monetization/internal/AdErrorCode;Ljava/util/Map;)V

    .line 321
    return-void
.end method

.method public onDismissAdScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 312
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$1;->a:Lcom/inmobi/monetization/IMInterstitial;

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->INIT:Lcom/inmobi/monetization/IMInterstitial$State;

    invoke-static {v0, v1}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMInterstitial$State;)Lcom/inmobi/monetization/IMInterstitial$State;

    .line 313
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$1;->a:Lcom/inmobi/monetization/IMInterstitial;

    const/16 v1, 0x67

    invoke-static {v0, v1, v2, v2}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;ILcom/inmobi/monetization/internal/AdErrorCode;Ljava/util/Map;)V

    .line 315
    return-void
.end method

.method public onIncentCompleted(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$1;->a:Lcom/inmobi/monetization/IMInterstitial;

    const/16 v1, 0x6a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;ILcom/inmobi/monetization/internal/AdErrorCode;Ljava/util/Map;)V

    .line 338
    return-void
.end method

.method public onLeaveApplication()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 306
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$1;->a:Lcom/inmobi/monetization/IMInterstitial;

    const/16 v1, 0x68

    invoke-static {v0, v1, v2, v2}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;ILcom/inmobi/monetization/internal/AdErrorCode;Ljava/util/Map;)V

    .line 307
    return-void
.end method

.method public onShowAdScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 300
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$1;->a:Lcom/inmobi/monetization/IMInterstitial;

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->ACTIVE:Lcom/inmobi/monetization/IMInterstitial$State;

    invoke-static {v0, v1}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMInterstitial$State;)Lcom/inmobi/monetization/IMInterstitial$State;

    .line 301
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$1;->a:Lcom/inmobi/monetization/IMInterstitial;

    const/16 v1, 0x66

    invoke-static {v0, v1, v2, v2}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;ILcom/inmobi/monetization/internal/AdErrorCode;Ljava/util/Map;)V

    .line 302
    return-void
.end method
