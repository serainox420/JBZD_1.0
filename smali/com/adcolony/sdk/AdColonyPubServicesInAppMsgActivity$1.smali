.class Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;Z)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity$1;->b:Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    iput-boolean p2, p0, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity$1;->a:Z

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity$1;->b:Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    iget-object v0, v0, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->c:Lcom/adcolony/sdk/ca;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity$1;->b:Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/ca;->a(Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity$1;->b:Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    iget-object v0, v0, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->c:Lcom/adcolony/sdk/ca;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity$1;->b:Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/ca;->b(Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;)V

    goto :goto_0
.end method
