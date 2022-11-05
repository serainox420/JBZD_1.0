.class public Lcom/apprupt/sdk/CvSettings;
.super Ljava/lang/Object;
.source "CvSettings.java"


# static fields
.field private static final a:Lcom/apprupt/sdk/CvSettings;


# instance fields
.field private final b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/apprupt/sdk/CvAnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcom/apprupt/sdk/CvSettings;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/apprupt/sdk/CvSettings;-><init>(Z)V

    sput-object v0, Lcom/apprupt/sdk/CvSettings;->a:Lcom/apprupt/sdk/CvSettings;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/CvSettings;-><init>(Z)V

    .line 28
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/apprupt/sdk/CvSettings;->c:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/apprupt/sdk/CvSettings;->d:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/apprupt/sdk/CvAnimationType;->DEFAULT:Lcom/apprupt/sdk/CvAnimationType;

    iput-object v0, p0, Lcom/apprupt/sdk/CvSettings;->e:Lcom/apprupt/sdk/CvAnimationType;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apprupt/sdk/CvSettings;->b:Z

    .line 32
    return-void
.end method
