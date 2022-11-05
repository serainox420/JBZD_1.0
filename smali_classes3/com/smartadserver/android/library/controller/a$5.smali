.class Lcom/smartadserver/android/library/controller/a$5;
.super Ljava/lang/Object;
.source "SASAdViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/model/SASAdElement;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/model/SASAdElement;

.field final synthetic b:Lcom/smartadserver/android/library/ui/d;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/smartadserver/android/library/controller/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/controller/a;Lcom/smartadserver/android/library/model/SASAdElement;Lcom/smartadserver/android/library/ui/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/a$5;->d:Lcom/smartadserver/android/library/controller/a;

    iput-object p2, p0, Lcom/smartadserver/android/library/controller/a$5;->a:Lcom/smartadserver/android/library/model/SASAdElement;

    iput-object p3, p0, Lcom/smartadserver/android/library/controller/a$5;->b:Lcom/smartadserver/android/library/ui/d;

    iput-object p4, p0, Lcom/smartadserver/android/library/controller/a$5;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 576
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$5;->a:Lcom/smartadserver/android/library/model/SASAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASAdElement;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    .line 577
    if-nez v1, :cond_0

    .line 579
    invoke-static {}, Lcom/smartadserver/android/library/ui/SASAdView;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$5;->b:Lcom/smartadserver/android/library/ui/d;

    iget-object v2, p0, Lcom/smartadserver/android/library/controller/a$5;->c:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/smartadserver/android/library/ui/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    return-void
.end method
