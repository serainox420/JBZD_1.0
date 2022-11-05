.class Lcom/adcolony/sdk/ci$26$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ci$26;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONArray;

.field final synthetic b:Lcom/adcolony/sdk/ci$26;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ci$26;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/adcolony/sdk/ci$26$1;->b:Lcom/adcolony/sdk/ci$26;

    iput-object p2, p0, Lcom/adcolony/sdk/ci$26$1;->a:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 244
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cp;->c()Lcom/adcolony/sdk/AdColonyPubServicesOverlayActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lcom/adcolony/sdk/cp;->c()Lcom/adcolony/sdk/AdColonyPubServicesOverlayActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/ci$26$1;->b:Lcom/adcolony/sdk/ci$26;

    iget v1, v1, Lcom/adcolony/sdk/ci$26;->a:I

    iget-object v2, p0, Lcom/adcolony/sdk/ci$26$1;->a:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lcom/adcolony/sdk/AdColonyPubServicesOverlayActivity;->a(ILorg/json/JSONArray;)V

    .line 248
    :cond_0
    return-void
.end method
