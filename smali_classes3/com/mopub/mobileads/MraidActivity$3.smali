.class Lcom/mopub/mobileads/MraidActivity$3;
.super Ljava/lang/Object;
.source "MraidActivity.java"

# interfaces
.implements Lcom/mopub/mraid/MraidController$UseCustomCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MraidActivity;->getAdView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/MraidActivity;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MraidActivity;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/mopub/mobileads/MraidActivity$3;->a:Lcom/mopub/mobileads/MraidActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public useCustomCloseChanged(Z)V
    .locals 1

    .prologue
    .line 152
    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity$3;->a:Lcom/mopub/mobileads/MraidActivity;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidActivity;->c()V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity$3;->a:Lcom/mopub/mobileads/MraidActivity;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidActivity;->b()V

    goto :goto_0
.end method
