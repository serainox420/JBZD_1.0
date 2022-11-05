.class Lcom/apprupt/sdk/CvLauncher$ResizeProperties;
.super Ljava/lang/Object;
.source "CvLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResizeProperties"
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvLauncher;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvLauncher;II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    iput-object p1, p0, Lcom/apprupt/sdk/CvLauncher$ResizeProperties;->a:Lcom/apprupt/sdk/CvLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lcom/apprupt/sdk/CvLauncher$ResizeProperties;->b:I

    .line 33
    iput v0, p0, Lcom/apprupt/sdk/CvLauncher$ResizeProperties;->c:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apprupt/sdk/CvLauncher$ResizeProperties;->d:Ljava/lang/String;

    .line 42
    iput p2, p0, Lcom/apprupt/sdk/CvLauncher$ResizeProperties;->b:I

    .line 43
    iput p3, p0, Lcom/apprupt/sdk/CvLauncher$ResizeProperties;->c:I

    .line 44
    return-void
.end method

.method constructor <init>(Lcom/apprupt/sdk/CvLauncher;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/apprupt/sdk/CvLauncher$ResizeProperties;-><init>(Lcom/apprupt/sdk/CvLauncher;II)V

    .line 38
    iput-object p4, p0, Lcom/apprupt/sdk/CvLauncher$ResizeProperties;->d:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/apprupt/sdk/CvLauncher$ResizeProperties;->b:I

    return v0
.end method

.method b()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/apprupt/sdk/CvLauncher$ResizeProperties;->c:I

    return v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/apprupt/sdk/CvLauncher$ResizeProperties;->d:Ljava/lang/String;

    return-object v0
.end method
