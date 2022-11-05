.class Lcom/apprupt/sdk/CvAudience$CvAudienceHolder;
.super Ljava/lang/Object;
.source "CvAudience.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvAudience;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CvAudienceHolder"
.end annotation


# static fields
.field public static final a:Lcom/apprupt/sdk/CvAudience;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/apprupt/sdk/CvAudience;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apprupt/sdk/CvAudience;-><init>(Lcom/apprupt/sdk/CvAudience$1;)V

    sput-object v0, Lcom/apprupt/sdk/CvAudience$CvAudienceHolder;->a:Lcom/apprupt/sdk/CvAudience;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
