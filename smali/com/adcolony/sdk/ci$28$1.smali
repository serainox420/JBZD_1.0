.class Lcom/adcolony/sdk/ci$28$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ci$28;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/adcolony/sdk/ci$28;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ci$28;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/adcolony/sdk/ci$28$1;->b:Lcom/adcolony/sdk/ci$28;

    iput-object p2, p0, Lcom/adcolony/sdk/ci$28$1;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 287
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cp;->c()Lcom/adcolony/sdk/AdColonyPubServicesOverlayActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Lcom/adcolony/sdk/cp;->c()Lcom/adcolony/sdk/AdColonyPubServicesOverlayActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/ci$28$1;->a:Ljava/util/Map;

    invoke-static {v1}, Lcom/adcolony/sdk/co;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/AdColonyPubServicesOverlayActivity;->a(Ljava/lang/String;)V

    .line 291
    :cond_0
    return-void
.end method
