.class synthetic Lcom/apprupt/sdk/CvAdWrapper$9;
.super Ljava/lang/Object;
.source "CvAdWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvAdWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 109
    invoke-static {}, Lcom/apprupt/sdk/CvAdType;->values()[Lcom/apprupt/sdk/CvAdType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/apprupt/sdk/CvAdWrapper$9;->a:[I

    :try_start_0
    sget-object v0, Lcom/apprupt/sdk/CvAdWrapper$9;->a:[I

    sget-object v1, Lcom/apprupt/sdk/CvAdType;->b:Lcom/apprupt/sdk/CvAdType;

    invoke-virtual {v1}, Lcom/apprupt/sdk/CvAdType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/apprupt/sdk/CvAdWrapper$9;->a:[I

    sget-object v1, Lcom/apprupt/sdk/CvAdType;->d:Lcom/apprupt/sdk/CvAdType;

    invoke-virtual {v1}, Lcom/apprupt/sdk/CvAdType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lcom/apprupt/sdk/CvAdWrapper$9;->a:[I

    sget-object v1, Lcom/apprupt/sdk/CvAdType;->e:Lcom/apprupt/sdk/CvAdType;

    invoke-virtual {v1}, Lcom/apprupt/sdk/CvAdType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/apprupt/sdk/CvAdWrapper$9;->a:[I

    sget-object v1, Lcom/apprupt/sdk/CvAdType;->f:Lcom/apprupt/sdk/CvAdType;

    invoke-virtual {v1}, Lcom/apprupt/sdk/CvAdType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
