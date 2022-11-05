.class public Lcom/pubmatic/sdk/banner/Background;
.super Ljava/lang/Object;
.source "Background.java"


# static fields
.field private static final executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/pubmatic/sdk/banner/Background;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/pubmatic/sdk/banner/Background;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method
