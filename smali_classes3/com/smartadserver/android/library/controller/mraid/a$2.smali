.class Lcom/smartadserver/android/library/controller/mraid/a$2;
.super Ljava/lang/Object;
.source "SASMRAIDController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/controller/mraid/a;->expand(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/smartadserver/android/library/controller/mraid/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/controller/mraid/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->b:Lcom/smartadserver/android/library/controller/mraid/a;

    iput-object p2, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 280
    .line 281
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->b:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->i:Lcom/smartadserver/android/library/controller/c;

    if-eqz v0, :cond_7

    .line 282
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->b:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->i:Lcom/smartadserver/android/library/controller/c;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/c;->b()Z

    move-result v0

    move v6, v0

    .line 286
    :goto_0
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->b:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->b(Lcom/smartadserver/android/library/controller/mraid/a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "loading"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->b:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/controller/mraid/a;->b(Lcom/smartadserver/android/library/controller/mraid/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hidden"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->b:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/controller/mraid/a;->b(Lcom/smartadserver/android/library/controller/mraid/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    :cond_0
    invoke-static {}, Lcom/smartadserver/android/library/controller/mraid/a;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CAN NOT EXPAND: invalid state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->b:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v2}, Lcom/smartadserver/android/library/controller/mraid/a;->b(Lcom/smartadserver/android/library/controller/mraid/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_1
    :goto_1
    return-void

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->b:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 293
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->b:Lcom/smartadserver/android/library/controller/mraid/a;

    const-string v1, "expanded"

    invoke-static {v0, v1, v4}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Lcom/smartadserver/android/library/controller/mraid/a;Ljava/lang/String;Z)V

    .line 301
    :cond_3
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->b:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->b:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v5}, Lcom/smartadserver/android/library/controller/mraid/a;->c(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/controller/mraid/c;

    move-result-object v5

    iget-boolean v5, v5, Lcom/smartadserver/android/library/controller/mraid/c;->a:Z

    if-nez v5, :cond_5

    :goto_2
    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->b:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v3}, Lcom/smartadserver/android/library/controller/mraid/a;->c(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/controller/mraid/c;

    move-result-object v3

    iget-object v5, v3, Lcom/smartadserver/android/library/controller/mraid/c;->b:Ljava/lang/String;

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/String;IIZLjava/lang/String;)V

    .line 308
    const-string v0, "interstitial"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->b:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/controller/mraid/a;->getPlacementType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 310
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->a:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->b:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/controller/mraid/a;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v6, :cond_6

    .line 312
    :cond_4
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->b:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-virtual {v0, v6}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Z)V

    goto :goto_1

    :cond_5
    move v4, v3

    .line 301
    goto :goto_2

    .line 313
    :cond_6
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 316
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->b:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentAdElement()Lcom/smartadserver/android/library/model/SASAdElement;

    move-result-object v0

    instance-of v0, v0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    if-nez v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->b:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/controller/mraid/a$2$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/controller/mraid/a$2$1;-><init>(Lcom/smartadserver/android/library/controller/mraid/a$2;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_7
    move v6, v3

    goto/16 :goto_0
.end method
