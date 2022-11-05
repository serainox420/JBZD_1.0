.class public Lpl/jbzd/core/a/d;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lpl/jbzd/core/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpl/jbzd/core/a/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lpl/jbzd/core/a/d;->b:Landroid/content/Context;

    .line 47
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/support/v4/app/aj$d;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/net/Uri;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 123
    shr-int/lit8 v1, v0, 0x1

    .line 125
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 126
    invoke-static {p1, v3, v3, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 129
    :cond_0
    new-instance v0, Landroid/support/v4/app/aj$b;

    invoke-direct {v0}, Landroid/support/v4/app/aj$b;-><init>()V

    .line 130
    invoke-virtual {v0, p4}, Landroid/support/v4/app/aj$b;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/aj$b;

    .line 131
    invoke-direct {p0, p5}, Lpl/jbzd/core/a/d;->b(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aj$b;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/aj$b;

    .line 132
    invoke-virtual {v0, p1}, Landroid/support/v4/app/aj$b;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/aj$b;

    .line 134
    invoke-virtual {p2, p3}, Landroid/support/v4/app/aj$d;->a(I)Landroid/support/v4/app/aj$d;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/support/v4/app/aj$d;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/aj$d;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/aj$d;->a(J)Landroid/support/v4/app/aj$d;

    move-result-object v1

    const/4 v2, 0x1

    .line 135
    invoke-virtual {v1, v2}, Landroid/support/v4/app/aj$d;->c(Z)Landroid/support/v4/app/aj$d;

    move-result-object v1

    .line 136
    invoke-virtual {v1, p4}, Landroid/support/v4/app/aj$d;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/aj$d;

    move-result-object v1

    .line 137
    invoke-virtual {v1, p7}, Landroid/support/v4/app/aj$d;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/aj$d;

    move-result-object v1

    .line 138
    invoke-virtual {v1, p8}, Landroid/support/v4/app/aj$d;->a(Landroid/net/Uri;)Landroid/support/v4/app/aj$d;

    move-result-object v1

    .line 139
    invoke-virtual {v1, v0}, Landroid/support/v4/app/aj$d;->a(Landroid/support/v4/app/aj$q;)Landroid/support/v4/app/aj$d;

    move-result-object v0

    const/high16 v1, 0x7f030000

    .line 140
    invoke-virtual {v0, v1}, Landroid/support/v4/app/aj$d;->a(I)Landroid/support/v4/app/aj$d;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/core/a/d;->b:Landroid/content/Context;

    .line 141
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aj$d;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/aj$d;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p5}, Landroid/support/v4/app/aj$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/aj$d;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/support/v4/app/aj$d;->a()Landroid/app/Notification;

    move-result-object v1

    .line 145
    iget-object v0, p0, Lpl/jbzd/core/a/d;->b:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 146
    const/16 v2, 0x65

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 147
    return-void
.end method

.method private a(Landroid/support/v4/app/aj$d;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 96
    new-instance v0, Landroid/support/v4/app/aj$f;

    invoke-direct {v0}, Landroid/support/v4/app/aj$f;-><init>()V

    .line 98
    const-string v1, "MyFirebase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showSmallNotification - title: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v1, "MyFirebase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showSmallNotification - message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v0, p4}, Landroid/support/v4/app/aj$f;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/aj$f;

    .line 104
    invoke-virtual {p1, p2}, Landroid/support/v4/app/aj$d;->a(I)Landroid/support/v4/app/aj$d;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/support/v4/app/aj$d;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/aj$d;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/aj$d;->a(J)Landroid/support/v4/app/aj$d;

    move-result-object v1

    const/4 v2, 0x1

    .line 105
    invoke-virtual {v1, v2}, Landroid/support/v4/app/aj$d;->c(Z)Landroid/support/v4/app/aj$d;

    move-result-object v1

    .line 106
    invoke-virtual {v1, p3}, Landroid/support/v4/app/aj$d;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/aj$d;

    move-result-object v1

    .line 107
    invoke-virtual {v1, p6}, Landroid/support/v4/app/aj$d;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/aj$d;

    move-result-object v1

    .line 108
    invoke-virtual {v1, p7}, Landroid/support/v4/app/aj$d;->a(Landroid/net/Uri;)Landroid/support/v4/app/aj$d;

    move-result-object v1

    .line 109
    invoke-virtual {v1, v0}, Landroid/support/v4/app/aj$d;->a(Landroid/support/v4/app/aj$q;)Landroid/support/v4/app/aj$d;

    move-result-object v0

    const/high16 v1, 0x7f030000

    .line 111
    invoke-virtual {v0, v1}, Landroid/support/v4/app/aj$d;->a(I)Landroid/support/v4/app/aj$d;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/core/a/d;->b:Landroid/content/Context;

    .line 112
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aj$d;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/aj$d;

    move-result-object v0

    .line 113
    invoke-virtual {v0, p4}, Landroid/support/v4/app/aj$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/aj$d;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/support/v4/app/aj$d;->a()Landroid/app/Notification;

    move-result-object v1

    .line 116
    iget-object v0, p0, Lpl/jbzd/core/a/d;->b:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 117
    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 118
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 195
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 196
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 198
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_0

    .line 199
    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    .line 208
    :goto_1
    return v0

    .line 199
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2

    .prologue
    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 153
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    .line 155
    :cond_0
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 237
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 238
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 239
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 166
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 168
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 169
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 170
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 171
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 174
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 181
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/core/a/d;->b:Landroid/content/Context;

    .line 182
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/raw/notification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lpl/jbzd/core/a/d;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 50
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lpl/jbzd/core/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/high16 v3, 0x7f030000

    .line 58
    .line 60
    const/high16 v0, 0x24000000

    invoke-virtual {p4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 61
    iget-object v0, p0, Lpl/jbzd/core/a/d;->b:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    .line 62
    invoke-static {v0, v1, p4, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 69
    new-instance v2, Landroid/support/v4/app/aj$d;

    iget-object v0, p0, Lpl/jbzd/core/a/d;->b:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/support/v4/app/aj$d;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/core/a/d;->b:Landroid/content/Context;

    .line 73
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/raw/notification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 75
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0, p5}, Lpl/jbzd/core/a/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_1

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 82
    invoke-direct/range {v0 .. v8}, Lpl/jbzd/core/a/d;->a(Landroid/graphics/Bitmap;Landroid/support/v4/app/aj$d;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/net/Uri;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 84
    invoke-direct/range {v1 .. v8}, Lpl/jbzd/core/a/d;->a(Landroid/support/v4/app/aj$d;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/net/Uri;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 88
    invoke-direct/range {v1 .. v8}, Lpl/jbzd/core/a/d;->a(Landroid/support/v4/app/aj$d;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/net/Uri;)V

    .line 89
    invoke-virtual {p0}, Lpl/jbzd/core/a/d;->a()V

    goto :goto_0
.end method
