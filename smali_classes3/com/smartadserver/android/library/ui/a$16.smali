.class Lcom/smartadserver/android/library/ui/a$16;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/model/SASAdElement;

.field final synthetic b:Lcom/smartadserver/android/library/ui/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a;Lcom/smartadserver/android/library/model/SASAdElement;)V
    .locals 0

    .prologue
    .line 2026
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$16;->b:Lcom/smartadserver/android/library/ui/a;

    iput-object p2, p0, Lcom/smartadserver/android/library/ui/a$16;->a:Lcom/smartadserver/android/library/model/SASAdElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2029
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$16;->b:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->m(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->h:Lcom/smartadserver/android/library/controller/a;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$16;->a:Lcom/smartadserver/android/library/model/SASAdElement;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/model/SASAdElement;)Z

    .line 2030
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$16;->b:Lcom/smartadserver/android/library/ui/a;

    new-instance v1, Lcom/smartadserver/android/library/ui/a$16$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/a$16$1;-><init>(Lcom/smartadserver/android/library/ui/a$16;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/a;->post(Ljava/lang/Runnable;)Z

    .line 2039
    return-void
.end method
