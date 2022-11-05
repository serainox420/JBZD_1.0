.class Lcom/smartadserver/android/library/g/c$2$1;
.super Ljava/lang/Object;
.source "SASUtil.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/g/c$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/g/c$2;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/g/c$2;)V
    .locals 0

    .prologue
    .line 998
    iput-object p1, p0, Lcom/smartadserver/android/library/g/c$2$1;->a:Lcom/smartadserver/android/library/g/c$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/smartadserver/android/library/g/c$2$1;->a:Lcom/smartadserver/android/library/g/c$2;

    iget-object v0, v0, Lcom/smartadserver/android/library/g/c$2;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/smartadserver/android/library/g/c$2$1;->a:Lcom/smartadserver/android/library/g/c$2;

    iget-object v0, v0, Lcom/smartadserver/android/library/g/c$2;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1005
    :cond_0
    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 998
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/smartadserver/android/library/g/c$2$1;->a(Ljava/lang/String;)V

    return-void
.end method
