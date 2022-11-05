.class Lcom/apprupt/sdk/Vibrator$Wrapper;
.super Ljava/lang/Object;
.source "Vibrator.java"

# interfaces
.implements Lcom/apprupt/sdk/Vibrator$API;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/Vibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Wrapper"
.end annotation


# instance fields
.field private final a:Landroid/os/Vibrator;


# direct methods
.method private constructor <init>(Landroid/os/Vibrator;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apprupt/sdk/Vibrator$Wrapper;->a:Landroid/os/Vibrator;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Vibrator;Lcom/apprupt/sdk/Vibrator$1;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/Vibrator$Wrapper;-><init>(Landroid/os/Vibrator;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 44
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/apprupt/sdk/Vibrator$Wrapper;->a(J)V

    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/apprupt/sdk/Vibrator$Wrapper;->a:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method
