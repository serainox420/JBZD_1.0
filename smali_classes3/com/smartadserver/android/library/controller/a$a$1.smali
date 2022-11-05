.class Lcom/smartadserver/android/library/controller/a$a$1;
.super Ljava/lang/Object;
.source "SASAdViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/controller/a$a;->adLoadingCompleted(Lcom/smartadserver/android/library/model/SASAdElement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/controller/a$a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/controller/a$a;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/a$a$1;->a:Lcom/smartadserver/android/library/controller/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$a$1;->a:Lcom/smartadserver/android/library/controller/a$a;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/a$a;->d:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Z)V

    .line 203
    return-void
.end method
