.class Lcom/apprupt/sdk/TestSignals;
.super Ljava/lang/Object;
.source "TestSignals.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprupt/sdk/TestSignals$Sender;,
        Lcom/apprupt/sdk/TestSignals$Receiver;
    }
.end annotation


# static fields
.field static final a:Lcom/apprupt/sdk/TestSignals;

.field static final b:Z


# instance fields
.field private final c:Landroid/os/Handler;

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apprupt/sdk/TestSignals$Receiver;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/apprupt/sdk/TestSignals$Sender;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/apprupt/sdk/TestSignals;

    invoke-direct {v0}, Lcom/apprupt/sdk/TestSignals;-><init>()V

    sput-object v0, Lcom/apprupt/sdk/TestSignals;->a:Lcom/apprupt/sdk/TestSignals;

    .line 38
    invoke-static {}, Lcom/apprupt/sdk/Logger;->b()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/apprupt/sdk/TestSignals;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/apprupt/sdk/TestSignals;->c:Landroid/os/Handler;

    .line 40
    sget-boolean v0, Lcom/apprupt/sdk/TestSignals;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/apprupt/sdk/TestSignals;->d:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/TestSignals;->e:Ljava/util/HashMap;

    .line 45
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/apprupt/sdk/TestSignals;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/apprupt/sdk/TestSignals;->d:Ljava/util/HashMap;

    return-object v0
.end method
