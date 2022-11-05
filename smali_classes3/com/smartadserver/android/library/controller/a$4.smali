.class Lcom/smartadserver/android/library/controller/a$4;
.super Ljava/lang/Object;
.source "SASAdViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/model/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/model/a;

.field final synthetic b:Lcom/smartadserver/android/library/controller/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/controller/a;Lcom/smartadserver/android/library/model/a;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/a$4;->b:Lcom/smartadserver/android/library/controller/a;

    iput-object p2, p0, Lcom/smartadserver/android/library/controller/a$4;->a:Lcom/smartadserver/android/library/model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$4;->b:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/a$4;->a:Lcom/smartadserver/android/library/model/a;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/model/a;->e()Lcom/smartadserver/android/library/c/g;

    move-result-object v1

    invoke-interface {v1}, Lcom/smartadserver/android/library/c/g;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->setMediationView(Landroid/view/View;)V

    .line 455
    return-void
.end method
