.class Lcom/adcolony/sdk/YvolverDeepLinkManager$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLinkBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/YvolverDeepLinkManager$3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/YvolverDeepLinkManager$3;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/YvolverDeepLinkManager$3;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$3$1;->a:Lcom/adcolony/sdk/YvolverDeepLinkManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeDeepLink(Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$3$1;->a:Lcom/adcolony/sdk/YvolverDeepLinkManager$3;

    iget-object v0, v0, Lcom/adcolony/sdk/YvolverDeepLinkManager$3;->a:Lcom/adcolony/sdk/YvolverDeepLinkManager;

    invoke-static {v0, p2, p1}, Lcom/adcolony/sdk/YvolverDeepLinkManager;->a(Lcom/adcolony/sdk/YvolverDeepLinkManager;Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;)V

    .line 83
    return-void
.end method
