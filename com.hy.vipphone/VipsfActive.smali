.class public Lcom/hy/vipphone/VipsfActive;
.super Lcom/hy/vipphone/vipphoneactive;
.source "VipsfActive.java"


# static fields
.field static final DATE_DIALOG_ID:I


# instance fields
.field private mBuReset:Landroid/widget/Button;

.field private mBuSf:Landroid/widget/Button;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDay:I

.field private mMonth:I

.field private mPickDate:Landroid/widget/Button;

.field private mYear:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/hy/vipphone/vipphoneactive;-><init>()V

    .line 86
    new-instance v0, Lcom/hy/vipphone/VipsfActive$1;

    invoke-direct {v0, p0}, Lcom/hy/vipphone/VipsfActive$1;-><init>(Lcom/hy/vipphone/VipsfActive;)V

    iput-object v0, p0, Lcom/hy/vipphone/VipsfActive;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/hy/vipphone/VipsfActive;I)V
    .registers 2

    .prologue
    .line 30
    iput p1, p0, Lcom/hy/vipphone/VipsfActive;->mYear:I

    return-void
.end method

.method static synthetic access$1(Lcom/hy/vipphone/VipsfActive;I)V
    .registers 2

    .prologue
    .line 31
    iput p1, p0, Lcom/hy/vipphone/VipsfActive;->mMonth:I

    return-void
.end method

.method static synthetic access$2(Lcom/hy/vipphone/VipsfActive;I)V
    .registers 2

    .prologue
    .line 32
    iput p1, p0, Lcom/hy/vipphone/VipsfActive;->mDay:I

    return-void
.end method

.method static synthetic access$3(Lcom/hy/vipphone/VipsfActive;)V
    .registers 1

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/hy/vipphone/VipsfActive;->updateDisplay()V

    return-void
.end method

.method static synthetic access$4(Lcom/hy/vipphone/VipsfActive;)V
    .registers 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/hy/vipphone/VipsfActive;->saveData()V

    return-void
.end method

.method static synthetic access$5(Lcom/hy/vipphone/VipsfActive;)V
    .registers 1

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/hy/vipphone/VipsfActive;->resetData()V

    return-void
.end method

.method private resetData()V
    .registers 6

    .prologue
    const-string v4, ""

    .line 218
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 219
    .local v1, "now":Ljava/util/Date;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, "df":Ljava/text/SimpleDateFormat;
    const v2, 0x7f060006

    invoke-virtual {p0, v2}, Lcom/hy/vipphone/VipsfActive;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    const v2, 0x7f06001c

    invoke-virtual {p0, v2}, Lcom/hy/vipphone/VipsfActive;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    const v2, 0x7f060014

    invoke-virtual {p0, v2}, Lcom/hy/vipphone/VipsfActive;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    const v2, 0x7f060015

    invoke-virtual {p0, v2}, Lcom/hy/vipphone/VipsfActive;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    const v2, 0x7f060017

    invoke-virtual {p0, v2}, Lcom/hy/vipphone/VipsfActive;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0    # "this":Lcom/hy/vipphone/VipsfActive;
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    return-void
.end method

.method private saveData()V
    .registers 28

    .prologue
    .line 112
    const v3, 0x7f060006

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/hy/vipphone/VipsfActive;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 114
    .local v26, "tvTemp":Landroid/widget/TextView;
    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 116
    .local v23, "strKh":Ljava/lang/String;
    const v3, 0x7f06001c

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/hy/vipphone/VipsfActive;->findViewById(I)Landroid/view/View;

    move-result-object v26

    .end local v26    # "tvTemp":Landroid/widget/TextView;
    check-cast v26, Landroid/widget/TextView;

    .line 118
    .restart local v26    # "tvTemp":Landroid/widget/TextView;
    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 120
    .local v25, "strXm":Ljava/lang/String;
    const v3, 0x7f060014

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/hy/vipphone/VipsfActive;->findViewById(I)Landroid/view/View;

    move-result-object v26

    .end local v26    # "tvTemp":Landroid/widget/TextView;
    check-cast v26, Landroid/widget/TextView;

    .line 122
    .restart local v26    # "tvTemp":Landroid/widget/TextView;
    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 124
    .local v22, "strJe":Ljava/lang/String;
    const v3, 0x7f060015

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/hy/vipphone/VipsfActive;->findViewById(I)Landroid/view/View;

    move-result-object v26

    .end local v26    # "tvTemp":Landroid/widget/TextView;
    check-cast v26, Landroid/widget/TextView;

    .line 126
    .restart local v26    # "tvTemp":Landroid/widget/TextView;
    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 128
    .local v21, "strCs":Ljava/lang/String;
    const v3, 0x7f060017

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/hy/vipphone/VipsfActive;->findViewById(I)Landroid/view/View;

    move-result-object v26

    .end local v26    # "tvTemp":Landroid/widget/TextView;
    check-cast v26, Landroid/widget/TextView;

    .line 130
    .restart local v26    # "tvTemp":Landroid/widget/TextView;
    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 133
    .local v24, "strRq":Ljava/lang/String;
    new-instance v19, Lcom/hy/vipphone/DatabaseHelper;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/hy/vipphone/DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 134
    .local v19, "openHelper":Lcom/hy/vipphone/DatabaseHelper;
    invoke-virtual/range {v19 .. v19}, Lcom/hy/vipphone/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 156
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "vipcard"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "cardje"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "cardcs"

    aput-object v6, v4, v5

    const-string v5, "cardno=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v23, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 158
    .local v11, "cur":Landroid/database/Cursor;
    if-eqz v11, :cond_98

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_b7

    .line 160
    :cond_98
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7f16\u53f7\u662f"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u7684\u5361\u7247\u4e0d\u5b58\u5728!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/hy/vipphone/VipsfActive;->ts(Ljava/lang/String;)V

    .line 215
    :goto_b6
    return-void

    .line 164
    :cond_b7
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 166
    const-string v3, "cardje"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    .line 167
    .local v12, "doucardje":D
    const-string v3, "cardcs"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 172
    .local v17, "intcardcs":I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dc

    .line 173
    const-string v22, "0.0"

    .line 174
    :cond_dc
    invoke-static/range {v22 .. v22}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 175
    .local v14, "dousfje":D
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 176
    const-string v21, "0"

    .line 177
    :cond_ee
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 179
    .local v18, "intsfcs":I
    cmpg-double v3, v12, v14

    if-gez v3, :cond_10c

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5361\u4e0a\u53ef\u4f7f\u7528\u91d1\u989d\u4e0d\u591f!vip\u5361\u53ef\u4f7f\u7528\u91d1\u989d\u662f"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/hy/vipphone/VipsfActive;->ts(Ljava/lang/String;)V

    goto :goto_b6

    .line 185
    :cond_10c
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_12b

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5361\u4e0a\u53ef\u4f7f\u7528\u6b21\u6570\u4e0d\u591f!vip\u5361\u53ef\u4f7f\u7528\u6b21\u6570\u662f"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/hy/vipphone/VipsfActive;->ts(Ljava/lang/String;)V

    goto :goto_b6

    .line 191
    :cond_12b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "insert into vipsf ( cardno , sfxm , sfje , sfcs , sfrq ) values(\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    move-object v0, v3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\');"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 191
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 195
    .local v20, "sql":Ljava/lang/String;
    :try_start_177
    move-object v0, v2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "update vipcard set cardje="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-double v4, v12, v14

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",cardcs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-int v4, v17, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " where cardno=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' ;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 197
    move-object v0, v2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 198
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 199
    const-string v4, "\u63d0\u793a"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6536\u8d39\u6210\u529f\u3002\u5361\u53f7\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u670d\u52a1\u9879\u76ee:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 201
    const-string v4, "\u786e\u8ba4"

    .line 202
    new-instance v5, Lcom/hy/vipphone/VipsfActive$5;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/hy/vipphone/VipsfActive$5;-><init>(Lcom/hy/vipphone/VipsfActive;)V

    .line 201
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 210
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_1f5
    .catch Landroid/database/SQLException; {:try_start_177 .. :try_end_1f5} :catch_1f7

    goto/16 :goto_b6

    .line 211
    :catch_1f7
    move-exception v3

    move-object/from16 v16, v3

    .line 212
    .local v16, "e":Landroid/database/SQLException;
    const-string v3, "\u6536\u8d39\u5931\u8d25\uff01"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/hy/vipphone/VipsfActive;->ts(Ljava/lang/String;)V

    goto/16 :goto_b6
.end method

.method private ts(Ljava/lang/String;)V
    .registers 5
    .param p1, "strInfo"    # Ljava/lang/String;

    .prologue
    .line 230
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 231
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 232
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 233
    const-string v1, "\u786e\u8ba4"

    .line 234
    new-instance v2, Lcom/hy/vipphone/VipsfActive$6;

    invoke-direct {v2, p0}, Lcom/hy/vipphone/VipsfActive$6;-><init>(Lcom/hy/vipphone/VipsfActive;)V

    .line 233
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 243
    return-void
.end method

.method private updateDisplay()V
    .registers 5

    .prologue
    const-string v3, "-"

    .line 105
    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Lcom/hy/vipphone/VipsfActive;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/hy/vipphone/VipsfActive;->mYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hy/vipphone/VipsfActive;->mMonth:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hy/vipphone/VipsfActive;->mDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/hy/vipphone/vipphoneactive;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v1, 0x7f03000a

    invoke-virtual {p0, v1}, Lcom/hy/vipphone/VipsfActive;->setContentView(I)V

    .line 39
    invoke-direct {p0}, Lcom/hy/vipphone/VipsfActive;->resetData()V

    .line 41
    const v1, 0x7f06002b

    invoke-virtual {p0, v1}, Lcom/hy/vipphone/VipsfActive;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/hy/vipphone/VipsfActive;->mBuSf:Landroid/widget/Button;

    .line 42
    iget-object v1, p0, Lcom/hy/vipphone/VipsfActive;->mBuSf:Landroid/widget/Button;

    new-instance v2, Lcom/hy/vipphone/VipsfActive$2;

    invoke-direct {v2, p0}, Lcom/hy/vipphone/VipsfActive$2;-><init>(Lcom/hy/vipphone/VipsfActive;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v1, 0x7f06001a

    invoke-virtual {p0, v1}, Lcom/hy/vipphone/VipsfActive;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/hy/vipphone/VipsfActive;->mBuReset:Landroid/widget/Button;

    .line 50
    iget-object v1, p0, Lcom/hy/vipphone/VipsfActive;->mBuReset:Landroid/widget/Button;

    new-instance v2, Lcom/hy/vipphone/VipsfActive$3;

    invoke-direct {v2, p0}, Lcom/hy/vipphone/VipsfActive$3;-><init>(Lcom/hy/vipphone/VipsfActive;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 58
    .local v0, "c":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/hy/vipphone/VipsfActive;->mYear:I

    .line 59
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/hy/vipphone/VipsfActive;->mMonth:I

    .line 60
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/hy/vipphone/VipsfActive;->mDay:I

    .line 62
    const v1, 0x7f060018

    invoke-virtual {p0, v1}, Lcom/hy/vipphone/VipsfActive;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/hy/vipphone/VipsfActive;->mPickDate:Landroid/widget/Button;

    .line 63
    iget-object v1, p0, Lcom/hy/vipphone/VipsfActive;->mPickDate:Landroid/widget/Button;

    new-instance v2, Lcom/hy/vipphone/VipsfActive$4;

    invoke-direct {v2, p0}, Lcom/hy/vipphone/VipsfActive$4;-><init>(Lcom/hy/vipphone/VipsfActive;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hy/vipphone/VipsfActive;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---vip\u6536\u8d39"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hy/vipphone/VipsfActive;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .param p1, "id"    # I

    .prologue
    .line 76
    packed-switch p1, :pswitch_data_14

    .line 82
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 78
    :pswitch_5
    new-instance v0, Landroid/app/DatePickerDialog;

    .line 79
    iget-object v2, p0, Lcom/hy/vipphone/VipsfActive;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 80
    iget v3, p0, Lcom/hy/vipphone/VipsfActive;->mYear:I

    iget v4, p0, Lcom/hy/vipphone/VipsfActive;->mMonth:I

    iget v5, p0, Lcom/hy/vipphone/VipsfActive;->mDay:I

    move-object v1, p0

    .line 78
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_4

    .line 76
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method
