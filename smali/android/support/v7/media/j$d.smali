.class public final Landroid/support/v7/media/j$d;
.super Ljava/lang/Object;
.source "MediaRouterJellybeanMr1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/reflect/Method;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    .line 142
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 146
    :cond_0
    :try_start_0
    const-class v0, Landroid/media/MediaRouter$RouteInfo;

    const-string v1, "STATUS_CONNECTING"

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 148
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/media/j$d;->b:I

    .line 149
    const-class v0, Landroid/media/MediaRouter$RouteInfo;

    const-string v1, "getStatusCode"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 150
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/j$d;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    goto :goto_0

    .line 152
    :catch_1
    move-exception v0

    goto :goto_0

    .line 151
    :catch_2
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 158
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    .line 161
    iget-object v0, p0, Landroid/support/v7/media/j$d;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 163
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/media/j$d;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 164
    iget v2, p0, Landroid/support/v7/media/j$d;->b:I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 171
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 164
    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    :cond_1
    :goto_1
    move v0, v1

    .line 171
    goto :goto_0

    .line 165
    :catch_1
    move-exception v0

    goto :goto_1
.end method
