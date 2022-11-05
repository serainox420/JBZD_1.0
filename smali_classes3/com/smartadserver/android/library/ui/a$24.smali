.class Lcom/smartadserver/android/library/ui/a$24;
.super Landroid/view/OrientationEventListener;
.source "SASNativeVideoLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a;-><init>(Landroid/content/Context;Lcom/smartadserver/android/library/ui/SASAdView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 663
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$24;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    .prologue
    const/16 v2, 0x13b

    .line 666
    const/4 v0, -0x1

    .line 667
    if-gt p1, v2, :cond_0

    const/16 v1, 0x2d

    if-gt p1, v1, :cond_3

    .line 668
    :cond_0
    const/4 v0, 0x1

    .line 677
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$24;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/a;->A(Lcom/smartadserver/android/library/ui/a;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 678
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$24;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v1, v0}, Lcom/smartadserver/android/library/ui/a;->b(Lcom/smartadserver/android/library/ui/a;I)I

    .line 679
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$24;->a:Lcom/smartadserver/android/library/ui/a;

    new-instance v1, Lcom/smartadserver/android/library/ui/a$24$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/a$24$1;-><init>(Lcom/smartadserver/android/library/ui/a$24;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/a;->post(Ljava/lang/Runnable;)Z

    .line 685
    invoke-static {}, Lcom/smartadserver/android/library/ui/a;->j()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new  mCurrentScreenOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a$24;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/a;->A(Lcom/smartadserver/android/library/ui/a;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    :cond_2
    return-void

    .line 669
    :cond_3
    const/16 v1, 0x87

    if-gt p1, v1, :cond_4

    .line 670
    const/16 v0, 0x8

    goto :goto_0

    .line 671
    :cond_4
    const/16 v1, 0xe1

    if-le p1, v1, :cond_1

    .line 674
    if-gt p1, v2, :cond_1

    .line 675
    const/4 v0, 0x0

    goto :goto_0
.end method
