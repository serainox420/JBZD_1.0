.class Lcom/smartadserver/android/library/ui/a$16$1;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/a$16;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a$16;)V
    .locals 0

    .prologue
    .line 2030
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$16$1;->a:Lcom/smartadserver/android/library/ui/a$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$16$1;->a:Lcom/smartadserver/android/library/ui/a$16;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$16;->b:Lcom/smartadserver/android/library/ui/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/a;->setVisibility(I)V

    .line 2034
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$16$1;->a:Lcom/smartadserver/android/library/ui/a$16;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$16;->b:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->m(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    if-eqz v0, :cond_0

    .line 2035
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$16$1;->a:Lcom/smartadserver/android/library/ui/a$16;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$16;->b:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->m(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/d;->setVisibility(I)V

    .line 2037
    :cond_0
    return-void
.end method
