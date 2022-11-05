.class public Lcom/openx/common/utils/constants/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final AF_PARAM_DEFAULT:Ljava/lang/String; = "3,5"

.field public static final BASE_DENSITY:Ljava/lang/String; = "mdpi"

.field public static final BROWSER_CONTROLS_PANEL_COLOR:I

.field public static final DRAWABLE_RESOURCES_CLASSPATH:Ljava/lang/String; = "com/openx/ad/mobile/sdk/resources/drawable"

.field public static final LOG_MSGS_FNAME:Ljava/lang/String; = "log_messages.csv"

.field public static final MRAID_ERR_MSGS_FNAME:Ljava/lang/String; = "mraid_error_messages.csv"

.field public static final MRAID_RESOURCES_CLASSPATH:Ljava/lang/String; = "com/openx/resources"

.field public static final OXM_TAG:Ljava/lang/String; = "OXMSDK"

.field public static final RAW_RESOURCES_CLASSPATH:Ljava/lang/String; = "com/openx/ad/mobile/sdk/resources/raw"

.field public static final SP_PARAM_DEFAULT:Ljava/lang/String; = "Android"

.field public static final STRINGS_FNAME:Ljava/lang/String; = "strings.csv"

.field public static final sendTPSDKName:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 7
    const/16 v0, 0x2b

    const/16 v1, 0x2f

    const/16 v2, 0x32

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/openx/common/utils/constants/Constants;->BROWSER_CONTROLS_PANEL_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
