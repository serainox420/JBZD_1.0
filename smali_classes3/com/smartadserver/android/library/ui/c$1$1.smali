.class Lcom/smartadserver/android/library/ui/c$1$1;
.super Ljava/lang/Object;
.source "SASViewabilityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/c$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/c$a;

.field final synthetic b:Lcom/smartadserver/android/library/ui/c$1;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/c$1;Lcom/smartadserver/android/library/ui/c$a;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/c$1$1;->b:Lcom/smartadserver/android/library/ui/c$1;

    iput-object p2, p0, Lcom/smartadserver/android/library/ui/c$1$1;->a:Lcom/smartadserver/android/library/ui/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/c$1$1;->a:Lcom/smartadserver/android/library/ui/c$a;

    invoke-interface {v0}, Lcom/smartadserver/android/library/ui/c$a;->updateVisibilityPercentage()V

    .line 63
    return-void
.end method
