.class Lcom/mopub/network/ScribeRequestManager$1;
.super Ljava/lang/Object;
.source "ScribeRequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/network/ScribeRequestManager;->onResponse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/network/ScribeRequestManager;


# direct methods
.method constructor <init>(Lcom/mopub/network/ScribeRequestManager;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mopub/network/ScribeRequestManager$1;->a:Lcom/mopub/network/ScribeRequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mopub/network/ScribeRequestManager$1;->a:Lcom/mopub/network/ScribeRequestManager;

    invoke-virtual {v0}, Lcom/mopub/network/ScribeRequestManager;->c()V

    .line 38
    return-void
.end method
