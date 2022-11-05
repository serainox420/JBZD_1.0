.class Lnet/gotev/uploadservice/b/a;
.super Ljava/lang/Object;
.source "ContentSchemeHandler.java"

# interfaces
.implements Lnet/gotev/uploadservice/b/c;


# instance fields
.field private a:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lnet/gotev/uploadservice/b/a;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 80
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private e(Landroid/content/Context;)J
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/b/a;->a:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 55
    if-nez v2, :cond_0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null cursor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/gotev/uploadservice/b/a;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", returning size 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/gotev/uploadservice/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-wide/16 v0, 0x0

    .line 63
    :goto_0
    return-wide v0

    .line 59
    :cond_0
    const-string v0, "_size"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 60
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 61
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 62
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private f(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/b/a;->a:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 68
    if-nez v1, :cond_0

    .line 69
    invoke-direct {p0}, Lnet/gotev/uploadservice/b/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    .line 71
    :cond_0
    const-string v0, "_display_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 72
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 73
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)J
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lnet/gotev/uploadservice/b/a;->e(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/b/a;->a:Landroid/net/Uri;

    .line 27
    return-void
.end method

.method public b(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/b/a;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/b/a;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    :cond_0
    const-string v0, "application/octet-stream"

    .line 45
    :cond_1
    return-object v0
.end method

.method public d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lnet/gotev/uploadservice/b/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
