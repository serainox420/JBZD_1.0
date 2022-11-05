.class public Lcom/openx/core/sdk/OXMBaseManager;
.super Ljava/lang/Object;
.source "OXMBaseManager.java"

# interfaces
.implements Lcom/openx/core/sdk/OXMManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsInit:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/core/sdk/OXMBaseManager;->mIsInit:Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openx/core/sdk/OXMBaseManager;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/openx/core/sdk/OXMBaseManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    if-eqz p1, :cond_0

    .line 32
    iput-object p1, p0, Lcom/openx/core/sdk/OXMBaseManager;->mContext:Landroid/content/Context;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/core/sdk/OXMBaseManager;->mIsInit:Z

    .line 35
    :cond_0
    return-void
.end method

.method public isInit()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/openx/core/sdk/OXMBaseManager;->mIsInit:Z

    return v0
.end method
