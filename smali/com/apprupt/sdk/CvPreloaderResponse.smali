.class public Lcom/apprupt/sdk/CvPreloaderResponse;
.super Ljava/lang/Object;
.source "CvPreloaderResponse.java"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v1, p0, Lcom/apprupt/sdk/CvPreloaderResponse;->a:Z

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apprupt/sdk/CvPreloaderResponse;->b:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/apprupt/sdk/CvPreloaderResponse;->c:I

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apprupt/sdk/CvPreloaderResponse;->a:Z

    .line 17
    iput-object p1, p0, Lcom/apprupt/sdk/CvPreloaderResponse;->b:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/apprupt/sdk/CvPreloaderResponse;->c:I

    .line 19
    return-void
.end method
