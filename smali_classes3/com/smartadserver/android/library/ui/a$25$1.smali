.class Lcom/smartadserver/android/library/ui/a$25$1;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a$25;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/a$25;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a$25;)V
    .locals 0

    .prologue
    .line 821
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$25$1;->a:Lcom/smartadserver/android/library/ui/a$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 824
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$25$1;->a:Lcom/smartadserver/android/library/ui/a$25;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$25;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->m(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentAdElement()Lcom/smartadserver/android/library/model/SASAdElement;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->setStickToTopEnabled(Z)V

    .line 825
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$25$1;->a:Lcom/smartadserver/android/library/ui/a$25;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$25;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->m(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Z)V

    .line 826
    return-void
.end method
