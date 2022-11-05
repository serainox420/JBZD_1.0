.class public Lcom/apprupt/sdk/CvBaseActivityImpl;
.super Landroid/app/Activity;
.source "CvBaseActivityImpl.java"

# interfaces
.implements Lcom/apprupt/sdk/CvBaseActivity;


# static fields
.field private static final e:Lcom/apprupt/sdk/Logger$log;


# instance fields
.field protected a:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/lang/String;

.field protected final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apprupt/sdk/CvBaseActivity$PermissionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "FILE_UPLOAD"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    sput-object v0, Lcom/apprupt/sdk/CvBaseActivityImpl;->e:Lcom/apprupt/sdk/Logger$log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/apprupt/sdk/CvBaseActivityImpl;->a:Landroid/webkit/ValueCallback;

    .line 37
    iput-object v0, p0, Lcom/apprupt/sdk/CvBaseActivityImpl;->b:Landroid/webkit/ValueCallback;

    .line 38
    iput-object v0, p0, Lcom/apprupt/sdk/CvBaseActivityImpl;->c:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvBaseActivityImpl;->d:Ljava/util/ArrayList;

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 98
    const/4 v1, 0x0

    .line 102
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 103
    invoke-static {p1, p2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 108
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    :goto_0
    return-object v0

    .line 109
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 110
    :goto_1
    sget-object v2, Lcom/apprupt/sdk/CvBaseActivityImpl;->e:Lcom/apprupt/sdk/Logger$log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Unable to create Image or Video File (falling back to downloads directory)"

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    invoke-interface {v2, v3}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    goto :goto_0

    .line 109
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected static a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 214
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    if-eqz p2, :cond_0

    .line 220
    new-array v0, v6, [Landroid/content/Intent;

    aput-object p2, v0, v5

    .line 226
    :goto_0
    sget-object v2, Lcom/apprupt/sdk/CvBaseActivityImpl;->e:Lcom/apprupt/sdk/Logger$log;

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "Opening chooser"

    aput-object v4, v3, v5

    invoke-interface {v2, v3}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 228
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CHOOSER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 230
    const-string v1, "android.intent.extra.TITLE"

    const-string v3, "File Chooser"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v2, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 234
    return-void

    .line 222
    :cond_0
    new-array v0, v5, [Landroid/content/Intent;

    goto :goto_0
.end method

.method static a(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 149
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/apprupt/sdk/CvBaseActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lcom/apprupt/sdk/CvContext;[Ljava/lang/String;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apprupt/sdk/CvContext;",
            "[",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvContext;->a()Landroid/app/Activity;

    move-result-object v1

    .line 154
    invoke-static {v1}, Lcom/apprupt/sdk/CvBaseActivityImpl;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    sget-object v0, Lcom/apprupt/sdk/CvBaseActivityImpl;->e:Lcom/apprupt/sdk/Logger$log;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "Current activity cannot handle file input"

    aput-object v3, v2, v4

    aput-object v1, v2, v5

    invoke-interface {v0, v2}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    move v0, v4

    .line 209
    :goto_0
    return v0

    :cond_0
    move-object v0, v1

    .line 159
    check-cast v0, Lcom/apprupt/sdk/CvBaseActivity;

    .line 161
    invoke-interface {v0, p2}, Lcom/apprupt/sdk/CvBaseActivity;->a(Landroid/webkit/ValueCallback;)V

    .line 162
    invoke-interface {v0, p3}, Lcom/apprupt/sdk/CvBaseActivity;->b(Landroid/webkit/ValueCallback;)V

    .line 165
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 167
    const-string v3, "image/*"

    invoke-static {v3, v2}, Lcom/apprupt/sdk/CvBaseActivityImpl;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    const-string v3, "android.media.action.IMAGE_CAPTURE"

    .line 169
    const-string v2, "image/*"

    .line 181
    :goto_1
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 192
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvContext;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3}, Lcom/apprupt/sdk/CvBaseActivityImpl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3}, Lcom/apprupt/sdk/CvBaseActivityImpl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v7, v3}, Lcom/apprupt/sdk/CvBaseActivityImpl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 194
    if-eqz v3, :cond_3

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/apprupt/sdk/CvBaseActivity;->a(Ljava/lang/String;)V

    .line 196
    const-string v0, "output"

    .line 197
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 196
    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 198
    invoke-static {v1, v2, v6}, Lcom/apprupt/sdk/CvBaseActivityImpl;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;)V

    move v0, v5

    .line 199
    goto :goto_0

    .line 170
    :cond_1
    const-string v3, "video/*"

    invoke-static {v3, v2}, Lcom/apprupt/sdk/CvBaseActivityImpl;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 171
    const-string v3, "android.media.action.VIDEO_CAPTURE"

    .line 172
    const-string v2, "video/*"

    goto :goto_1

    .line 174
    :cond_2
    sget-object v0, Lcom/apprupt/sdk/CvBaseActivityImpl;->e:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "Invalid access type, cannot handle"

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    move v0, v4

    .line 175
    goto :goto_0

    .line 201
    :cond_3
    invoke-static {v1, v2, v8}, Lcom/apprupt/sdk/CvBaseActivityImpl;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;)V

    :goto_2
    move v0, v5

    .line 209
    goto/16 :goto_0

    .line 203
    :cond_4
    sget-object v0, Lcom/apprupt/sdk/CvBaseActivityImpl;->e:Lcom/apprupt/sdk/Logger$log;

    new-array v3, v5, [Ljava/lang/Object;

    const-string v6, "No camera app resolved"

    aput-object v6, v3, v4

    invoke-interface {v0, v3}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 204
    invoke-static {v1, v2, v8}, Lcom/apprupt/sdk/CvBaseActivityImpl;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_2
.end method

.method static a(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 139
    const-string v0, "*"

    const-string v1, ".*"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 117
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 117
    :sswitch_0
    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 119
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 123
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 117
    nop

    :sswitch_data_0
    .sparse-switch
        -0x74de9aed -> :sswitch_1
        0x29c9b033 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 135
    const-string v0, ""

    :goto_1
    return-object v0

    .line 129
    :sswitch_0
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 131
    :pswitch_0
    const-string v0, ".jpg"

    goto :goto_1

    .line 133
    :pswitch_1
    const-string v0, ".mp4"

    goto :goto_1

    .line 129
    :sswitch_data_0
    .sparse-switch
        -0x74de9aed -> :sswitch_0
        0x29c9b033 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a()Landroid/webkit/ValueCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/apprupt/sdk/CvBaseActivityImpl;->b:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method public a(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    iput-object p1, p0, Lcom/apprupt/sdk/CvBaseActivityImpl;->b:Landroid/webkit/ValueCallback;

    .line 240
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/apprupt/sdk/CvBaseActivityImpl;->c:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public b()Landroid/webkit/ValueCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/apprupt/sdk/CvBaseActivityImpl;->a:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method public b(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    iput-object p1, p0, Lcom/apprupt/sdk/CvBaseActivityImpl;->a:Landroid/webkit/ValueCallback;

    .line 250
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/apprupt/sdk/CvBaseActivityImpl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvBaseActivityImpl;->a()Landroid/webkit/ValueCallback;

    move-result-object v2

    .line 48
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvBaseActivityImpl;->b()Landroid/webkit/ValueCallback;

    move-result-object v3

    .line 50
    if-ne p1, v8, :cond_0

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    .line 51
    :cond_0
    sget-object v0, Lcom/apprupt/sdk/CvBaseActivityImpl;->e:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "Result not for me, skipping results..."

    aput-object v2, v1, v7

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 52
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 93
    :goto_0
    return-void

    .line 56
    :cond_1
    sget-object v0, Lcom/apprupt/sdk/CvBaseActivityImpl;->e:Lcom/apprupt/sdk/Logger$log;

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "Got some result form file chooser!"

    aput-object v5, v4, v7

    invoke-interface {v0, v4}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvBaseActivityImpl;->c()Ljava/lang/String;

    move-result-object v4

    .line 61
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    .line 62
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 63
    :cond_2
    sget-object v0, Lcom/apprupt/sdk/CvBaseActivityImpl;->e:Lcom/apprupt/sdk/Logger$log;

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "There is no data... serching for file"

    aput-object v6, v5, v7

    invoke-interface {v0, v5}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 65
    if-eqz v4, :cond_5

    .line 66
    sget-object v0, Lcom/apprupt/sdk/CvBaseActivityImpl;->e:Lcom/apprupt/sdk/Logger$log;

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "We\'ve got file path, lets pass it"

    aput-object v6, v5, v7

    aput-object v4, v5, v8

    invoke-interface {v0, v5}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 67
    new-array v0, v8, [Landroid/net/Uri;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v0, v7

    .line 80
    :goto_1
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 81
    sget-object v4, Lcom/apprupt/sdk/CvBaseActivityImpl;->e:Lcom/apprupt/sdk/Logger$log;

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "Sending results to callbacks"

    aput-object v6, v5, v7

    invoke-interface {v4, v5}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 82
    invoke-interface {v3, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 84
    :cond_3
    invoke-virtual {p0, v1}, Lcom/apprupt/sdk/CvBaseActivityImpl;->b(Landroid/webkit/ValueCallback;)V

    .line 85
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 86
    array-length v3, v0

    if-ge v7, v3, :cond_4

    aget-object v0, v0, v7

    .line 87
    sget-object v3, Lcom/apprupt/sdk/CvBaseActivityImpl;->e:Lcom/apprupt/sdk/Logger$log;

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "Sending result to callback"

    aput-object v5, v4, v7

    invoke-interface {v3, v4}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 88
    invoke-interface {v2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 92
    :cond_4
    invoke-virtual {p0, v1}, Lcom/apprupt/sdk/CvBaseActivityImpl;->a(Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 69
    :cond_5
    sget-object v0, Lcom/apprupt/sdk/CvBaseActivityImpl;->e:Lcom/apprupt/sdk/Logger$log;

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "No camera path"

    aput-object v5, v4, v7

    invoke-interface {v0, v4}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_1

    .line 72
    :cond_6
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 73
    sget-object v0, Lcom/apprupt/sdk/CvBaseActivityImpl;->e:Lcom/apprupt/sdk/Logger$log;

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "data uri"

    aput-object v6, v5, v7

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v0, v5}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 74
    new-array v0, v8, [Landroid/net/Uri;

    aput-object v4, v0, v7

    goto :goto_1

    .line 77
    :cond_7
    sget-object v0, Lcom/apprupt/sdk/CvBaseActivityImpl;->e:Lcom/apprupt/sdk/Logger$log;

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "result is not ok"

    aput-object v5, v4, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-interface {v0, v4}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .prologue
    .line 290
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 291
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 292
    iget-object v0, p0, Lcom/apprupt/sdk/CvBaseActivityImpl;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvBaseActivity$PermissionListener;

    .line 293
    invoke-interface {v0, p1, p2, p3}, Lcom/apprupt/sdk/CvBaseActivity$PermissionListener;->a(I[Ljava/lang/String;[I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 297
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/apprupt/sdk/CvBaseActivityImpl;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 300
    :cond_2
    return-void
.end method
