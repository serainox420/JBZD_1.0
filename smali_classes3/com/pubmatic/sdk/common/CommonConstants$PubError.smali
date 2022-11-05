.class public Lcom/pubmatic/sdk/common/CommonConstants$PubError;
.super Ljava/lang/Object;
.source "CommonConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/CommonConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PubError"
.end annotation


# static fields
.field public static final CONNECTION_ERROR:I = -0x3e9

.field public static final GENERIC_IO_ERROR:I = -0x3ed

.field public static final INVALID_AD_ERROR:I = -0x1

.field public static final INVALID_RESPONSE_ERROR:I = -0x3ee

.field public static final JSON_ERROR:I = -0x3ef

.field public static final REDIRECT_ERROR:I = -0x516

.field public static final REQUEST_CANCLE:I = -0x3eb

.field public static final REQUEST_ERROR:I = -0x3e8

.field public static final SERVER_ERROR:I = -0x3ea

.field public static final SUCCESS_CODE:I = 0x0

.field public static final TIMEOUT_ERROR:I = -0x3ec

.field public static final UNDEFINED_ERROR:I = -0x3e7


# instance fields
.field final synthetic this$0:Lcom/pubmatic/sdk/common/CommonConstants;


# direct methods
.method public constructor <init>(Lcom/pubmatic/sdk/common/CommonConstants;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/pubmatic/sdk/common/CommonConstants$PubError;->this$0:Lcom/pubmatic/sdk/common/CommonConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
