.class Lcom/smartadserver/android/library/ui/a$4;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a;->a(Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic b:Lcom/smartadserver/android/library/ui/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    .prologue
    .line 1384
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$4;->b:Lcom/smartadserver/android/library/ui/a;

    iput-object p2, p0, Lcom/smartadserver/android/library/ui/a$4;->a:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$4;->b:Lcom/smartadserver/android/library/ui/a;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$4;->b:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/a;->q(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/a;->setBackgroundColor(I)V

    .line 1388
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$4;->b:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->s(Lcom/smartadserver/android/library/ui/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$4;->a:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1389
    return-void
.end method
