.class Lcom/mopub/mobileads/a$1;
.super Ljava/lang/Object;
.source "BaseInterstitialActivity.java"

# interfaces
.implements Lcom/mopub/common/CloseableLayout$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/a;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/a;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/a;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mopub/mobileads/a$1;->a:Lcom/mopub/mobileads/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mopub/mobileads/a$1;->a:Lcom/mopub/mobileads/a;

    invoke-virtual {v0}, Lcom/mopub/mobileads/a;->finish()V

    .line 65
    return-void
.end method
