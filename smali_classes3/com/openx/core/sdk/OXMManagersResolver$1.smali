.class Lcom/openx/core/sdk/OXMManagersResolver$1;
.super Ljava/lang/Object;
.source "OXMManagersResolver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/core/sdk/OXMManagersResolver;->registerManagers(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/core/sdk/OXMManagersResolver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/openx/core/sdk/OXMManagersResolver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/openx/core/sdk/OXMManagersResolver$1;->this$0:Lcom/openx/core/sdk/OXMManagersResolver;

    iput-object p2, p0, Lcom/openx/core/sdk/OXMManagersResolver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 211
    new-instance v0, Lcom/openx/common/deviceData/managers/LocationImpl;

    invoke-direct {v0}, Lcom/openx/common/deviceData/managers/LocationImpl;-><init>()V

    .line 212
    iget-object v1, p0, Lcom/openx/core/sdk/OXMManagersResolver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/openx/common/deviceData/managers/LocationImpl;->init(Landroid/content/Context;)V

    .line 213
    iget-object v1, p0, Lcom/openx/core/sdk/OXMManagersResolver$1;->this$0:Lcom/openx/core/sdk/OXMManagersResolver;

    invoke-static {v1}, Lcom/openx/core/sdk/OXMManagersResolver;->access$100(Lcom/openx/core/sdk/OXMManagersResolver;)Ljava/util/Hashtable;

    move-result-object v1

    sget-object v2, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->LOCATION_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    return-void
.end method
