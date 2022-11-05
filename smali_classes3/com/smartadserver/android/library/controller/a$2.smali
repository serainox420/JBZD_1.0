.class Lcom/smartadserver/android/library/controller/a$2;
.super Ljava/lang/Object;
.source "SASAdViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/controller/a;->a(ILjava/lang/String;ILjava/lang/String;ZLcom/smartadserver/android/library/ui/SASAdView$a;ILorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/controller/a$a;

.field final synthetic b:Lcom/smartadserver/android/library/model/SASAdElement;

.field final synthetic c:Lcom/smartadserver/android/library/controller/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/controller/a;Lcom/smartadserver/android/library/controller/a$a;Lcom/smartadserver/android/library/model/SASAdElement;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/a$2;->c:Lcom/smartadserver/android/library/controller/a;

    iput-object p2, p0, Lcom/smartadserver/android/library/controller/a$2;->a:Lcom/smartadserver/android/library/controller/a$a;

    iput-object p3, p0, Lcom/smartadserver/android/library/controller/a$2;->b:Lcom/smartadserver/android/library/model/SASAdElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$2;->a:Lcom/smartadserver/android/library/controller/a$a;

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/a$2;->b:Lcom/smartadserver/android/library/model/SASAdElement;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/a$a;->adLoadingCompleted(Lcom/smartadserver/android/library/model/SASAdElement;)V

    .line 330
    return-void
.end method
