.class final Lcom/facebook/imagepipeline/cache/MediaVariationsIndexDatabase$IndexEntry;
.super Ljava/lang/Object;
.source "MediaVariationsIndexDatabase.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/cache/MediaVariationsIndexDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IndexEntry"
.end annotation


# static fields
.field public static final COLUMN_NAME_CACHE_CHOICE:Ljava/lang/String; = "cache_choice"

.field public static final COLUMN_NAME_CACHE_KEY:Ljava/lang/String; = "cache_key"

.field public static final COLUMN_NAME_HEIGHT:Ljava/lang/String; = "height"

.field public static final COLUMN_NAME_MEDIA_ID:Ljava/lang/String; = "media_id"

.field public static final COLUMN_NAME_RESOURCE_ID:Ljava/lang/String; = "resource_id"

.field public static final COLUMN_NAME_WIDTH:Ljava/lang/String; = "width"

.field public static final TABLE_NAME:Ljava/lang/String; = "media_variations_index"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
