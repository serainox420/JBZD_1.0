.class public final Lcom/inmobi/monetization/internal/InvalidManifestConfigException;
.super Ljava/lang/Exception;
.source "InvalidManifestConfigException.java"


# static fields
.field public static final MISSING_ACCESS_NETWORK_STATE_PERMISSION:I = -0x9

.field public static final MISSING_ACTIVITY_DECLARATION:I = -0x2

.field public static final MISSING_CONFIG_CHANGES:I = -0x3

.field public static final MISSING_CONFIG_KEYBOARD:I = -0x4

.field public static final MISSING_CONFIG_KEYBOARDHIDDEN:I = -0x5

.field public static final MISSING_CONFIG_ORIENTATION:I = -0x6

.field public static final MISSING_CONFIG_SCREENSIZE:I = -0x7

.field public static final MISSING_CONFIG_SMALLEST_SCREENSIZE:I = -0x8

.field public static final MISSING_INTERNET_PERMISSION:I = -0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 68
    iput p1, p0, Lcom/inmobi/monetization/internal/InvalidManifestConfigException;->a:I

    .line 69
    return-void
.end method


# virtual methods
.method public getExceptionCode()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/inmobi/monetization/internal/InvalidManifestConfigException;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "IMConfigException : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 91
    iget v1, p0, Lcom/inmobi/monetization/internal/InvalidManifestConfigException;->a:I

    packed-switch v1, :pswitch_data_0

    .line 120
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 93
    :pswitch_0
    const-string v1, "IMBrowserActivity not declared in the manifest. Please declare it in the app manifest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 96
    :pswitch_1
    const-string v1, "IMBrowserActivity in the manifest does not have android:configChanges attributes.Please add android:configChanges=keyboardHidden|orientation|keyboard|screenSize|smallestScreenSize to IMBrowserActivity in the app manifest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 99
    :pswitch_2
    const-string v1, "App does not have INTERNET permissions. Please provide INTERNET permissions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 102
    :pswitch_3
    const-string v1, "Missing Config keyboard from android:configChangesof IMBRowserActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 105
    :pswitch_4
    const-string v1, "Missing Config keyboardHidden from android:configChangesof IMBRowserActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 108
    :pswitch_5
    const-string v1, "Missing Config orientation from android:configChangesof IMBRowserActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 111
    :pswitch_6
    const-string v1, "Missing Config screenSize from android:configChangesof IMBRowserActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 114
    :pswitch_7
    const-string v1, "Missing Config smallestScreenSize from android:configChanges of IMBRowserActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 117
    :pswitch_8
    const-string v1, "App does not have ACCESS_NETWORK_STATE permissions. Please provide ACCESS_NETWORK_STATE permissions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
