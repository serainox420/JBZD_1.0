.class public Lcom/smartadserver/android/library/model/SASAdElement;
.super Ljava/lang/Object;
.source "SASAdElement.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final BUTTON_BOTTOM_CENTER:I = 0x5

.field public static final BUTTON_BOTTOM_LEFT:I = 0x2

.field public static final BUTTON_BOTTOM_RIGHT:I = 0x3

.field public static final BUTTON_CENTER:I = 0x6

.field public static final BUTTON_TOP_CENTER:I = 0x4

.field public static final BUTTON_TOP_LEFT:I = 0x0

.field public static final BUTTON_TOP_RIGHT:I = 0x1

.field public static final CREATIVE_SIZE_NOT_DEFINED:I


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/util/Date;

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/StringBuffer;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:[Lcom/smartadserver/android/library/model/a;

.field private u:Lcom/smartadserver/android/library/model/a;

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private z:[Lcom/smartadserver/android/library/model/d;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->d:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->e:Ljava/lang/String;

    .line 90
    iput-boolean v1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->f:Z

    .line 95
    const/4 v0, 0x1

    iput v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->g:I

    .line 100
    iput v2, p0, Lcom/smartadserver/android/library/model/SASAdElement;->h:I

    .line 105
    iput v2, p0, Lcom/smartadserver/android/library/model/SASAdElement;->i:I

    .line 116
    iput-boolean v1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->k:Z

    .line 122
    iput-boolean v1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->l:Z

    .line 129
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->m:Ljava/lang/StringBuffer;

    .line 135
    iput v1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->n:I

    .line 140
    iput v1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->o:I

    .line 145
    iput v1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->p:I

    .line 150
    iput v1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->q:I

    .line 155
    iput-boolean v1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->r:Z

    .line 161
    iput-boolean v1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->s:Z

    .line 273
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 449
    const-string v0, "Html"

    .line 450
    invoke-virtual {p0}, Lcom/smartadserver/android/library/model/SASAdElement;->getSelectedMediationAd()Lcom/smartadserver/android/library/model/a;

    move-result-object v1

    .line 451
    if-eqz v1, :cond_0

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/smartadserver/android/library/model/a;->a()I

    move-result v1

    invoke-static {v1}, Lcom/smartadserver/android/library/c/j;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mediation ad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 454
    :cond_0
    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 640
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAdDuration()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->h:I

    return v0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getCandidateMediationAds()[Lcom/smartadserver/android/library/model/a;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->t:[Lcom/smartadserver/android/library/model/a;

    return-object v0
.end method

.method public getClickPixelUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->m:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCloseButtonAppearanceDelay()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->v:I

    return v0
.end method

.method public getCloseButtonPosition()I
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->g:I

    return v0
.end method

.method public getDebugInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 439
    const-string v0, ""

    .line 440
    invoke-virtual {p0}, Lcom/smartadserver/android/library/model/SASAdElement;->getInsertionId()I

    move-result v1

    .line 441
    if-lez v1, :cond_0

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InsertionID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreativeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/smartadserver/android/library/model/SASAdElement;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 445
    return-object v0
.end method

.method public getExpirationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->j:Ljava/util/Date;

    return-object v0
.end method

.method public getExtraParameters()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 582
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->y:Ljava/util/HashMap;

    return-object v0
.end method

.method public getHtmlContents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getImpUrls()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->i(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImpressionUrlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getInsertionId()I
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->i:I

    return v0
.end method

.method public getLandscapeHeight()I
    .locals 1

    .prologue
    .line 576
    iget v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->q:I

    return v0
.end method

.method public getLandscapeWidth()I
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->p:I

    return v0
.end method

.method public getPortraitHeight()I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->o:I

    return v0
.end method

.method public getPortraitWidth()I
    .locals 1

    .prologue
    .line 540
    iget v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->n:I

    return v0
.end method

.method public getScriptUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedMediationAd()Lcom/smartadserver/android/library/model/a;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->u:Lcom/smartadserver/android/library/model/a;

    return-object v0
.end method

.method public getViewabilityPixels()[Lcom/smartadserver/android/library/model/d;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->z:[Lcom/smartadserver/android/library/model/d;

    return-object v0
.end method

.method public isCloseOnClick()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->s:Z

    return v0
.end method

.method public isDisplayCloseAppearanceCountDown()Z
    .locals 1

    .prologue
    .line 621
    iget-boolean v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->w:Z

    return v0
.end method

.method public isNeedsDataConnection()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->l:Z

    return v0
.end method

.method public isOpenClickInApplication()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->f:Z

    return v0
.end method

.method public isPrefetchable()Z
    .locals 1

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->k:Z

    return v0
.end method

.method public isSwipeToClose()Z
    .locals 1

    .prologue
    .line 635
    iget-boolean v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->x:Z

    return v0
.end method

.method public isTransferTouchEvents()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->r:Z

    return v0
.end method

.method public setAdDuration(I)V
    .locals 0

    .prologue
    .line 424
    iput p1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->h:I

    .line 425
    return-void
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->b:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public setCandidateMediationAds([Lcom/smartadserver/android/library/model/a;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->t:[Lcom/smartadserver/android/library/model/a;

    .line 253
    return-void
.end method

.method public setClickPixelUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->e:Ljava/lang/String;

    .line 360
    return-void
.end method

.method public setClickUrl(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 526
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->m:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/smartadserver/android/library/model/SASAdElement;->m:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 527
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASAdElement;->m:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 528
    return-void
.end method

.method public setCloseButtonAppearanceDelay(I)V
    .locals 0

    .prologue
    .line 209
    iput p1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->v:I

    .line 210
    return-void
.end method

.method public setCloseButtonPosition(I)V
    .locals 0

    .prologue
    .line 408
    iput p1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->g:I

    .line 409
    return-void
.end method

.method public setCloseOnClick(Z)V
    .locals 0

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->s:Z

    .line 225
    return-void
.end method

.method public setDisplayCloseAppearanceCountDown(Z)V
    .locals 0

    .prologue
    .line 614
    iput-boolean p1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->w:Z

    .line 615
    return-void
.end method

.method public setExpirationDate(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->j:Ljava/util/Date;

    .line 479
    return-void
.end method

.method public setExtraParameters(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 589
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->y:Ljava/util/HashMap;

    .line 590
    return-void
.end method

.method public setHtmlContents(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->a:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public setImpressionUrlString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->d:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public setInsertionId(I)V
    .locals 0

    .prologue
    .line 462
    iput p1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->i:I

    .line 463
    return-void
.end method

.method public setLandscapeHeight(I)V
    .locals 0

    .prologue
    .line 570
    iput p1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->q:I

    return-void
.end method

.method public setLandscapeWidth(I)V
    .locals 0

    .prologue
    .line 558
    iput p1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->p:I

    return-void
.end method

.method public setNeedsDataConnection(Z)V
    .locals 0

    .prologue
    .line 510
    iput-boolean p1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->l:Z

    .line 511
    return-void
.end method

.method public setOpenClickInApplication(Z)V
    .locals 0

    .prologue
    .line 377
    iput-boolean p1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->f:Z

    .line 378
    return-void
.end method

.method public setPortraitHeight(I)V
    .locals 0

    .prologue
    .line 546
    iput p1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->o:I

    return-void
.end method

.method public setPortraitWidth(I)V
    .locals 0

    .prologue
    .line 534
    iput p1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->n:I

    return-void
.end method

.method public setPrefetchable(Z)V
    .locals 0

    .prologue
    .line 494
    iput-boolean p1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->k:Z

    .line 495
    return-void
.end method

.method public setScriptUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->c:Ljava/lang/String;

    .line 327
    return-void
.end method

.method public setSelectedMediationAd(Lcom/smartadserver/android/library/model/a;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->u:Lcom/smartadserver/android/library/model/a;

    .line 239
    return-void
.end method

.method public setSwipeToClose(Z)V
    .locals 0

    .prologue
    .line 628
    iput-boolean p1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->x:Z

    .line 629
    return-void
.end method

.method public setTransferTouchEvents(Z)V
    .locals 0

    .prologue
    .line 266
    iput-boolean p1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->r:Z

    .line 267
    return-void
.end method

.method public setViewabilityPixels([Lcom/smartadserver/android/library/model/d;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASAdElement;->z:[Lcom/smartadserver/android/library/model/d;

    .line 606
    return-void
.end method
