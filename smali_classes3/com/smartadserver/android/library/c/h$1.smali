.class Lcom/smartadserver/android/library/c/h$1;
.super Ljava/lang/Object;
.source "SASMediationAdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/c/h;->a([Lcom/smartadserver/android/library/model/a;J)Lcom/smartadserver/android/library/model/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/i;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcom/smartadserver/android/library/c/h$a;

.field final synthetic d:Lcom/smartadserver/android/library/c/h;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/c/h;Lcom/smartadserver/android/library/c/i;Ljava/util/HashMap;Lcom/smartadserver/android/library/c/h$a;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/smartadserver/android/library/c/h$1;->d:Lcom/smartadserver/android/library/c/h;

    iput-object p2, p0, Lcom/smartadserver/android/library/c/h$1;->a:Lcom/smartadserver/android/library/c/i;

    iput-object p3, p0, Lcom/smartadserver/android/library/c/h$1;->b:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/smartadserver/android/library/c/h$1;->c:Lcom/smartadserver/android/library/c/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 183
    iget-object v0, p0, Lcom/smartadserver/android/library/c/h$1;->a:Lcom/smartadserver/android/library/c/i;

    iget-object v1, p0, Lcom/smartadserver/android/library/c/h$1;->d:Lcom/smartadserver/android/library/c/h;

    invoke-static {v1}, Lcom/smartadserver/android/library/c/h;->b(Lcom/smartadserver/android/library/c/h;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/c/h$1;->d:Lcom/smartadserver/android/library/c/h;

    invoke-static {v2}, Lcom/smartadserver/android/library/c/h;->c(Lcom/smartadserver/android/library/c/h;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v2

    iget-object v3, p0, Lcom/smartadserver/android/library/c/h$1;->b:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/smartadserver/android/library/c/h$1;->c:Lcom/smartadserver/android/library/c/h$a;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/smartadserver/android/library/c/i;->a(Landroid/content/Context;Lcom/smartadserver/android/library/ui/SASAdView;Ljava/util/HashMap;Lcom/smartadserver/android/library/c/i$a;)V

    .line 184
    return-void
.end method
