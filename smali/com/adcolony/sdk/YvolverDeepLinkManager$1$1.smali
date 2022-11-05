.class Lcom/adcolony/sdk/YvolverDeepLinkManager$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLinkBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/YvolverDeepLinkManager$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/YvolverDeepLinkManager$1;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/YvolverDeepLinkManager$1;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$1$1;->a:Lcom/adcolony/sdk/YvolverDeepLinkManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeDeepLink(Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$1$1;->a:Lcom/adcolony/sdk/YvolverDeepLinkManager$1;

    iget-object v0, v0, Lcom/adcolony/sdk/YvolverDeepLinkManager$1;->d:Lcom/adcolony/sdk/YvolverDeepLinkManager;

    invoke-static {v0, p2, p1}, Lcom/adcolony/sdk/YvolverDeepLinkManager;->a(Lcom/adcolony/sdk/YvolverDeepLinkManager;Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;)V

    .line 53
    return-void
.end method
