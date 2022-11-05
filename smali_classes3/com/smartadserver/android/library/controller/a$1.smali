.class Lcom/smartadserver/android/library/controller/a$1;
.super Ljava/lang/Object;
.source "SASAdViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/controller/a;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/controller/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/controller/a;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/a$1;->a:Lcom/smartadserver/android/library/controller/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$1;->a:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/a$1;->a:Lcom/smartadserver/android/library/controller/a;

    iget-object v1, v1, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    sget-object v2, Lcom/smartadserver/android/library/controller/mraid/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/smartadserver/android/library/ui/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$1;->a:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/a$1;->a:Lcom/smartadserver/android/library/controller/a;

    iget-object v1, v1, Lcom/smartadserver/android/library/controller/a;->b:Lcom/smartadserver/android/library/controller/mraid/e;

    sget-object v2, Lcom/smartadserver/android/library/controller/mraid/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/smartadserver/android/library/ui/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$1;->a:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/a$1;->a:Lcom/smartadserver/android/library/controller/a;

    iget-object v1, v1, Lcom/smartadserver/android/library/controller/a;->c:Lcom/smartadserver/android/library/controller/mraid/f;

    sget-object v2, Lcom/smartadserver/android/library/controller/mraid/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/smartadserver/android/library/ui/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$1;->a:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/a$1;->a:Lcom/smartadserver/android/library/controller/a;

    iget-object v1, v1, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    sget-object v2, Lcom/smartadserver/android/library/controller/mraid/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/smartadserver/android/library/ui/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$1;->a:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/a$1;->a:Lcom/smartadserver/android/library/controller/a;

    iget-object v1, v1, Lcom/smartadserver/android/library/controller/a;->b:Lcom/smartadserver/android/library/controller/mraid/e;

    sget-object v2, Lcom/smartadserver/android/library/controller/mraid/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/smartadserver/android/library/ui/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$1;->a:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/a$1;->a:Lcom/smartadserver/android/library/controller/a;

    iget-object v1, v1, Lcom/smartadserver/android/library/controller/a;->c:Lcom/smartadserver/android/library/controller/mraid/f;

    sget-object v2, Lcom/smartadserver/android/library/controller/mraid/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/smartadserver/android/library/ui/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    return-void
.end method
